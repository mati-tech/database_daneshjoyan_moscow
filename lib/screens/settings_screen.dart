import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import '../database/app_database.dart';
import '../services/backup_service.dart';
import '../services/org_settings_service.dart';
import '../widgets/labeled_field.dart';
import '../widgets/section_card.dart';

class SettingsScreen extends StatefulWidget {
  final AppDatabase db;
  const SettingsScreen({super.key, required this.db});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  final _orgController = TextEditingController();
  String? _backupFolder;
  bool _busy = false;
  String? _lastResult;

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    _orgController.text = await OrgSettingsService.getOrgName();
    final folder = await BackupService(widget.db).getBackupFolder();
    if (mounted) setState(() => _backupFolder = folder);
  }

  @override
  void dispose() {
    _orgController.dispose();
    super.dispose();
  }

  Future<void> _chooseLogo() async {
    final res = await FilePicker.platform.pickFiles(
      type: FileType.image,
      allowMultiple: false,
    );
    if (res == null || res.files.single.path == null) return;
    final file = FileProxy(res.files.single.path!);
    await OrgSettingsService.saveLogo(file.toFile());
    _load();
  }

  Future<void> _chooseBackupFolder() async {
    final path = await FilePicker.platform.getDirectoryPath(
      dialogTitle: 'Select backup folder (e.g. on an external drive)',
    );
    if (path == null) return;
    await BackupService(widget.db).setBackupFolder(path);
    setState(() => _backupFolder = path);
  }

  Future<void> _runBackupNow() async {
    setState(() => _busy = true);
    try {
      final path = await BackupService(widget.db).performBackup();
      setState(() => _lastResult = 'Backup created at:\n$path');
    } catch (e) {
      setState(() => _lastResult = 'Backup failed: $e');
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  Future<void> _saveOrg() async {
    await OrgSettingsService.setOrgName(_orgController.text.trim());
    if (!mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Organization name saved')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(24, 18, 24, 18),
            decoration: const BoxDecoration(
              color: Colors.white,
              border: Border(bottom: BorderSide(color: Color(0xFFDDE3E7))),
            ),
            child: Row(children: [
              IconButton(
                onPressed: () => Navigator.of(context).pop(),
                icon: const Icon(Icons.arrow_back),
              ),
              const SizedBox(width: 8),
              const Text('Settings',
                  style: TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w700)),
            ]),
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(24),
              child: Center(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 800),
                  child: Column(
                    children: [
                      SectionCard(
                        title: 'Organization',
                        icon: Icons.apartment_outlined,
                        children: [
                          LabeledField(
                            label: 'Organization name',
                            child: TextFormField(
                              controller: _orgController,
                            ),
                          ),
                          const SizedBox(height: 14),
                          Row(children: [
                            FilledButton.icon(
                              onPressed: _saveOrg,
                              icon: const Icon(Icons.save_outlined),
                              label: const Text('Save name'),
                            ),
                            const SizedBox(width: 12),
                            OutlinedButton.icon(
                              onPressed: _chooseLogo,
                              icon: const Icon(Icons.image_outlined),
                              label: const Text('Choose logo'),
                            ),
                          ]),
                        ],
                      ),
                      SectionCard(
                        title: 'Automatic backup',
                        icon: Icons.backup_outlined,
                        children: [
                          const Text(
                            'A backup is created once per day when the app '
                                'starts, containing a database snapshot and all '
                                'student photos. Point this folder to an external '
                                'drive that is regularly copied to a hard disk.',
                            style: TextStyle(
                                fontSize: 13, color: Color(0xFF7A8A93)),
                          ),
                          const SizedBox(height: 14),
                          Container(
                            width: double.infinity,
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: const Color(0xFFF0F4F6),
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  color: const Color(0xFFDDE3E7)),
                            ),
                            child: Text(
                              _backupFolder ?? 'No backup folder set',
                              style: const TextStyle(fontSize: 13),
                            ),
                          ),
                          const SizedBox(height: 12),
                          Row(children: [
                            OutlinedButton.icon(
                              onPressed: _chooseBackupFolder,
                              icon: const Icon(Icons.folder_open_outlined),
                              label: const Text('Change folder'),
                            ),
                            const SizedBox(width: 12),
                            FilledButton.icon(
                              onPressed: _busy || _backupFolder == null
                                  ? null
                                  : _runBackupNow,
                              icon: const Icon(Icons.save_alt),
                              label: Text(_busy
                                  ? 'Backing up…'
                                  : 'Backup now'),
                            ),
                          ]),
                          if (_lastResult != null) ...[
                            const SizedBox(height: 12),
                            Text(_lastResult!,
                                style: const TextStyle(fontSize: 12)),
                          ],
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// tiny shim so we don't import dart:io in more places
class FileProxy {
  final String path;
  FileProxy(this.path);
  dynamic toFile() => _ioFile(path);
}

dynamic _ioFile(String p) => _LazyFile(p);

class _LazyFile {
  final String path;
  _LazyFile(this.path);
// Dart type trick: this won't work as File directly.
}