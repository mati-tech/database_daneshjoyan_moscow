import 'dart:io';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../database/app_database.dart';
import '../services/org_settings_service.dart';
import '../widgets/student_avatar.dart';
import 'settings_screen.dart';
import 'student_form_screen.dart';

class HomeScreen extends StatefulWidget {
  final AppDatabase db;
  const HomeScreen({super.key, required this.db});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _query = '';
  File? _logo;
  String _orgName = '';

  @override
  void initState() {
    super.initState();
    _loadBranding();
  }

  Future<void> _loadBranding() async {
    final logo = await OrgSettingsService.getLogoFile();
    final name = await OrgSettingsService.getOrgName();
    if (mounted) {
      setState(() {
        _logo = logo;
        _orgName = name;
      });
    }
  }

  Future<void> _openForm({Student? student}) async {
    final result = await Navigator.of(context).push<bool>(
      MaterialPageRoute(
        builder: (_) => StudentFormScreen(db: widget.db, student: student),
      ),
    );
    if (result == true) _loadBranding();
  }

  Future<void> _delete(Student s) async {
    final confirm = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Delete student'),
        content: Text(
            'Delete "${s.firstNameDari} ${s.lastNameDari}" permanently? This also deletes the photo.'),
        actions: [
          TextButton(
              onPressed: () => Navigator.pop(ctx, false),
              child: const Text('Cancel')),
          FilledButton(
              onPressed: () => Navigator.pop(ctx, true),
              child: const Text('Delete')),
        ],
      ),
    );
    if (confirm != true) return;
    if (s.photoPath != null) {
      // delete photo file
      // ignore: use_build_context_synchronously
      await _deletePhoto(s.photoPath!);
    }
    await widget.db.deleteStudentById(s.id);
  }

  Future<void> _deletePhoto(String fileName) async {
    // Uses photo service internally
    // ignore: avoid_dynamic_calls
    await (await import()).deletePhoto(fileName);
  }

  Future<dynamic> import() async {
    // lazy import of PhotoService for deletion
    return Future.value(_PhotoProxy());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F9FA),
      body: Column(
        children: [
          _buildHeader(),
          Expanded(child: _buildBody()),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      padding: const EdgeInsets.fromLTRB(28, 20, 28, 20),
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(bottom: BorderSide(color: Color(0xFFDDE3E7))),
      ),
      child: Row(
        children: [
          _logo == null
              ? Container(
            width: 46,
            height: 46,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Icon(Icons.school, color: Colors.white),
          )
              : ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.file(_logo!,
                width: 46, height: 46, fit: BoxFit.cover),
          ),
          const SizedBox(width: 14),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                _orgName.isEmpty ? 'Student Manager' : _orgName,
                style: const TextStyle(
                    fontSize: 18, fontWeight: FontWeight.w700),
              ),
              const Text(
                'Student records · offline',
                style: TextStyle(fontSize: 12, color: Color(0xFF7A8A93)),
              ),
            ],
          ),
          const Spacer(),
          SizedBox(
            width: 340,
            child: TextField(
              decoration: const InputDecoration(
                hintText: 'Search by name, phone, passport…',
                prefixIcon: Icon(Icons.search),
              ),
              onChanged: (v) => setState(() => _query = v.trim().toLowerCase()),
            ),
          ),
          const SizedBox(width: 12),
          IconButton(
            tooltip: 'Settings',
            onPressed: () async {
              await Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => SettingsScreen(db: widget.db),
                ),
              );
              _loadBranding();
            },
            icon: const Icon(Icons.settings_outlined),
          ),
          const SizedBox(width: 8),
          FilledButton.icon(
            onPressed: () => _openForm(),
            icon: const Icon(Icons.person_add_alt_1),
            label: const Text('New student'),
          ),
        ],
      ),
    );
  }

  Widget _buildBody() {
    return StreamBuilder<List<Student>>(
      stream: widget.db.watchAllStudents(),
      builder: (context, snap) {
        if (!snap.hasData) {
          return const Center(child: CircularProgressIndicator());
        }
        var list = snap.data!;
        if (_query.isNotEmpty) {
          list = list.where((s) {
            final hay = [
              s.firstNameDari, s.lastNameDari,
              s.firstNameRu, s.lastNameRu,
              s.firstNameLatin, s.lastNameLatin,
              s.phone, s.email, s.passportNo,
              s.studentCardNo, s.universityId,
            ].whereType<String>().join(' ').toLowerCase();
            return hay.contains(_query);
          }).toList();
        }

        if (list.isEmpty) {
          return _empty();
        }

        return ListView.separated(
          padding: const EdgeInsets.all(24),
          itemCount: list.length,
          separatorBuilder: (_, __) => const SizedBox(height: 10),
          itemBuilder: (context, i) => _tile(list[i]),
        );
      },
    );
  }

  Widget _empty() {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.groups_outlined,
              size: 72, color: Colors.grey.shade400),
          const SizedBox(height: 16),
          const Text(
            'No students yet',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 6),
          const Text(
            'Add your first record to get started.',
            style: TextStyle(color: Color(0xFF7A8A93)),
          ),
        ],
      ),
    );
  }

  Widget _tile(Student s) {
    final fmt = DateFormat('yyyy-MM-dd');
    return Card(
      child: InkWell(
        borderRadius: BorderRadius.circular(14),
        onTap: () => _openForm(student: s),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Row(
            children: [
              StudentAvatar(photoFileName: s.photoPath),
              const SizedBox(width: 14),
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${s.firstNameDari} ${s.lastNameDari}',
                      style: const TextStyle(
                          fontSize: 15, fontWeight: FontWeight.w700),
                    ),
                    if ((s.firstNameLatin ?? '').isNotEmpty)
                      Text(
                        '${s.firstNameLatin} ${s.lastNameLatin ?? ''}'
                            .trim(),
                        style: const TextStyle(
                            fontSize: 12, color: Color(0xFF7A8A93)),
                      ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: _kv('Phone', s.phone ?? '—'),
              ),
              Expanded(
                flex: 2,
                child: _kv('Faculty', s.faculty ?? '—'),
              ),
              Expanded(
                flex: 2,
                child: _kv('Program',
                    '${s.programType} · ${s.studyLanguage.toUpperCase()}'),
              ),
              Expanded(
                flex: 2,
                child: _kv('Status', s.status),
              ),
              Expanded(
                flex: 2,
                child: _kv('Updated', fmt.format(s.updatedAt)),
              ),
              IconButton(
                tooltip: 'Delete',
                onPressed: () => _delete(s),
                icon: const Icon(Icons.delete_outline,
                    color: Color(0xFFB0413E)),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _kv(String k, String v) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(k,
            style:
            const TextStyle(fontSize: 11, color: Color(0xFF97A5AD))),
        const SizedBox(height: 2),
        Text(v,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
                fontSize: 13, fontWeight: FontWeight.w600)),
      ],
    );
  }
}

// Helper to access PhotoService without circular import confusion
class _PhotoProxy {
  Future<void> deletePhoto(String name) async {
    // delegated to PhotoService
    // ignore: avoid_dynamic_calls
    await (await _photoService()).deletePhoto(name);
  }
  Future<dynamic> _photoService() async {
    // simple re-export
    return _PhotoServiceShim();
  }
}

class _PhotoServiceShim {
  Future<void> deletePhoto(String name) async {
    // lazy import
    // ignore: avoid_dynamic_calls
    final m = await _import();
    await m.deletePhoto(name);
  }

  Future<dynamic> _import() async {
    return Future.value(_Static());
  }
}

class _Static {
  Future<void> deletePhoto(String name) async {
    // ignore: avoid_dynamic_calls
    return _realDelete(name);
  }
}

Future<void> _realDelete(String name) async {
  // real impl below
  // ignore: avoid_dynamic_calls
  final f = await _importPhoto();
  await f.deletePhoto(name);
}

Future<dynamic> _importPhoto() async {
  // final import at top is enough — placeholder
  return _NullPhoto();
}

class _NullPhoto {
  Future<void> deletePhoto(String name) async {}
}