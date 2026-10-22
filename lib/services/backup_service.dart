import 'dart:io';
import 'package:intl/intl.dart';
import 'package:path/path.dart' as p;
import 'package:shared_preferences/shared_preferences.dart';
import '../database/app_database.dart';
import 'photo_service.dart';

class BackupService {
  final AppDatabase db;
  BackupService(this.db);

  static const _lastBackupKey = 'last_backup_date';
  static const _backupFolderKey = 'backup_folder_path';

  Future<String?> getBackupFolder() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_backupFolderKey);
  }

  Future<void> setBackupFolder(String path) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_backupFolderKey, path);
  }

  Future<void> clearBackupFolder() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_backupFolderKey);
  }

  /// Runs once per day on startup if a folder is configured.
  Future<void> checkAndBackup() async {
    final folder = await getBackupFolder();
    if (folder == null || !await Directory(folder).exists()) return;

    final prefs = await SharedPreferences.getInstance();
    final today = DateFormat('yyyy-MM-dd').format(DateTime.now());
    if (prefs.getString(_lastBackupKey) == today) return;

    await performBackup();
    await prefs.setString(_lastBackupKey, today);
  }

  /// Creates a timestamped folder containing DB snapshot + all photos.
  /// Returns the created backup folder path.
  Future<String> performBackup() async {
    final folder = await getBackupFolder();
    if (folder == null) {
      throw StateError('Backup folder not configured');
    }

    final stamp = DateFormat('yyyy-MM-dd_HH-mm-ss').format(DateTime.now());
    final root = Directory(p.join(folder, 'backup_$stamp'));
    await root.create(recursive: true);

    // 1. DB snapshot
    await db.snapshotTo(root.path, 'student_db.db');

    // 2. Photos
    final photosSrc = await PhotoService.photosDirectory();
    if (await photosSrc.exists()) {
      final photosDst = Directory(p.join(root.path, 'student_photos'));
      await photosDst.create(recursive: true);
      await for (final e in photosSrc.list()) {
        if (e is File) {
          await e.copy(p.join(photosDst.path, p.basename(e.path)));
        }
      }
    }

    // 3. Simple manifest
    final manifest = File(p.join(root.path, 'backup_info.txt'));
    await manifest.writeAsString(
      'Backup created: ${DateTime.now().toIso8601String()}\n'
          'Application: Student Manager\n',
    );

    return root.path;
  }
}