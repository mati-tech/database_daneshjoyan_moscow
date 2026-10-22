import 'dart:io';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import '../services/photo_service.dart';

class PhotoService {
  static Future<Directory> _photosDir() async {
    final docs = await getApplicationDocumentsDirectory();
    final dir = Directory(p.join(docs.path, 'student_photos'));
    if (!await dir.exists()) {
      await dir.create(recursive: true);
    }
    return dir;
  }

  static Future<String> savePhoto(File source) async {
    final dir = await _photosDir();
    final ext = p.extension(source.path).toLowerCase();
    final fileName =
        '${DateTime.now().millisecondsSinceEpoch}$ext';
    final dest = File(p.join(dir.path, fileName));
    await source.copy(dest.path);
    return fileName;
  }

  static Future<File?> getPhotoFile(String? fileName) async {
    if (fileName == null || fileName.isEmpty) return null;
    final dir = await _photosDir();
    final file = File(p.join(dir.path, fileName));
    return await file.exists() ? file : null;
  }

  static Future<void> deletePhoto(String? fileName) async {
    if (fileName == null || fileName.isEmpty) return;
    final dir = await _photosDir();
    final file = File(p.join(dir.path, fileName));
    if (await file.exists()) await file.delete();
  }

  static Future<Directory> photosDirectory() => _photosDir();
}