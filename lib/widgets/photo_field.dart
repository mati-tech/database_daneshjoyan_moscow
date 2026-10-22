import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import '../services/photo_service.dart';

class PhotoField extends StatefulWidget {
  final String? initialFileName;
  final ValueChanged<String?> onChanged;
  const PhotoField({
    super.key,
    this.initialFileName,
    required this.onChanged,
  });

  @override
  State<PhotoField> createState() => _PhotoFieldState();
}

class _PhotoFieldState extends State<PhotoField> {
  String? _fileName;
  File? _preview;
  bool _busy = false;

  @override
  void initState() {
    super.initState();
    _fileName = widget.initialFileName;
    _load();
  }

  Future<void> _load() async {
    final f = await PhotoService.getPhotoFile(_fileName);
    if (mounted) setState(() => _preview = f);
  }

  Future<void> _pick() async {
    setState(() => _busy = true);
    try {
      final res = await FilePicker.platform.pickFiles(
        type: FileType.image,
        allowMultiple: false,
      );
      if (res == null || res.files.single.path == null) return;
      final picked = File(res.files.single.path!);
      final name = await PhotoService.savePhoto(picked);
      if (_fileName != null) {
        await PhotoService.deletePhoto(_fileName);
      }
      setState(() => _fileName = name);
      widget.onChanged(name);
      await _load();
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  Future<void> _remove() async {
    if (_fileName == null) return;
    await PhotoService.deletePhoto(_fileName);
    setState(() {
      _fileName = null;
      _preview = null;
    });
    widget.onChanged(null);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 140,
          height: 140,
          decoration: BoxDecoration(
            color: const Color(0xFFF0F3F5),
            borderRadius: BorderRadius.circular(14),
            border: Border.all(color: const Color(0xFFDDE3E7)),
          ),
          child: _preview == null
              ? const Icon(Icons.person_outline, size: 56, color: Colors.grey)
              : ClipRRect(
            borderRadius: BorderRadius.circular(14),
            child: Image.file(_preview!, fit: BoxFit.cover),
          ),
        ),
        const SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Student photo',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
            ),
            const SizedBox(height: 6),
            const Text(
              'JPG or PNG. Stored locally with the student record.',
              style: TextStyle(fontSize: 12, color: Color(0xFF7A8A93)),
            ),
            const SizedBox(height: 14),
            Wrap(
              spacing: 10,
              children: [
                FilledButton.icon(
                  onPressed: _busy ? null : _pick,
                  icon: Icon(_fileName == null
                      ? Icons.add_a_photo_outlined
                      : Icons.swap_horiz),
                  label: Text(_fileName == null ? 'Add photo' : 'Change'),
                ),
                if (_fileName != null)
                  OutlinedButton.icon(
                    onPressed: _busy ? null : _remove,
                    icon: const Icon(Icons.delete_outline),
                    label: const Text('Remove'),
                  ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}