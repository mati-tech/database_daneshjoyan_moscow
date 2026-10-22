import 'dart:ui' as flutter;

import 'package:drift/drift.dart' as drift;
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../database/app_database.dart';
import '../services/photo_service.dart';
import '../widgets/labeled_field.dart';
import '../widgets/photo_field.dart';
import '../widgets/section_card.dart';

class StudentFormScreen extends StatefulWidget {
  final AppDatabase db;
  final Student? student;
  const StudentFormScreen({super.key, required this.db, this.student});

  @override
  State<StudentFormScreen> createState() => _StudentFormScreenState();
}

class _StudentFormScreenState extends State<StudentFormScreen> {
  final _formKey = GlobalKey<FormState>();

  late final TextEditingController _firstNameDari;
  late final TextEditingController _lastNameDari;
  late final TextEditingController _firstNameRu;
  late final TextEditingController _lastNameRu;
  late final TextEditingController _firstNameLatin;
  late final TextEditingController _lastNameLatin;
  late final TextEditingController _phone;
  late final TextEditingController _email;
  late final TextEditingController _passportNo;
  late final TextEditingController _studentCardNo;
  late final TextEditingController _universityId;
  late final TextEditingController _faculty;
  late final TextEditingController _studyYear;
  late final TextEditingController _homeAddress;
  late final TextEditingController _city;
  late final TextEditingController _moscowAddress;
  late final TextEditingController _familyContact;
  late final TextEditingController _notes;

  String _gender = 'male';
  String _status = 'active';
  String _programType = 'bachelor';
  String _studyLanguage = 'en';
  DateTime? _birthDate;
  DateTime? _arrivalDate;
  String? _photoFileName;
  String? _originalPhoto;

  static const statusOptions = ['active', 'graduated', 'suspended', 'left'];
  static const programOptions = ['bachelor', 'master', 'doc'];
  static const langOptions = ['en', 'ru'];

  bool get isEdit => widget.student != null;

  @override
  void initState() {
    super.initState();
    final s = widget.student;
    _firstNameDari = TextEditingController(text: s?.firstNameDari ?? '');
    _lastNameDari = TextEditingController(text: s?.lastNameDari ?? '');
    _firstNameRu = TextEditingController(text: s?.firstNameRu ?? '');
    _lastNameRu = TextEditingController(text: s?.lastNameRu ?? '');
    _firstNameLatin = TextEditingController(text: s?.firstNameLatin ?? '');
    _lastNameLatin = TextEditingController(text: s?.lastNameLatin ?? '');
    _phone = TextEditingController(text: s?.phone ?? '');
    _email = TextEditingController(text: s?.email ?? '');
    _passportNo = TextEditingController(text: s?.passportNo ?? '');
    _studentCardNo = TextEditingController(text: s?.studentCardNo ?? '');
    _universityId = TextEditingController(text: s?.universityId ?? '');
    _faculty = TextEditingController(text: s?.faculty ?? '');
    _studyYear =
        TextEditingController(text: s?.studyYear?.toString() ?? '');
    _homeAddress = TextEditingController(text: s?.homeAddress ?? '');
    _city = TextEditingController(text: s?.city ?? '');
    _moscowAddress = TextEditingController(text: s?.moscowAddress ?? '');
    _familyContact = TextEditingController(text: s?.familyContact ?? '');
    _notes = TextEditingController(text: s?.notes ?? '');

    _gender = s?.gender ?? 'male';
    _status = s?.status ?? 'active';
    _programType = s?.programType ?? 'bachelor';
    _studyLanguage = s?.studyLanguage ?? 'en';
    _birthDate = s?.birthDate;
    _arrivalDate = s?.arrivalDate;
    _photoFileName = s?.photoPath;
    _originalPhoto = s?.photoPath;
  }

  @override
  void dispose() {
    // If a new photo was picked but never saved, remove the orphan file.
    if (_photoFileName != null && _photoFileName != _originalPhoto) {
      PhotoService.deletePhoto(_photoFileName);
    }
    for (final c in [
      _firstNameDari, _lastNameDari, _firstNameRu, _lastNameRu,
      _firstNameLatin, _lastNameLatin, _phone, _email, _passportNo,
      _studentCardNo, _universityId, _faculty, _studyYear,
      _homeAddress, _city, _moscowAddress, _familyContact, _notes,
    ]) {
      c.dispose();
    }
    super.dispose();
  }

  Future<void> _pickDate({required bool isBirth}) async {
    final now = DateTime.now();
    final current = isBirth ? _birthDate : _arrivalDate;
    final picked = await showDatePicker(
      context: context,
      initialDate: current ?? DateTime(now.year - 20),
      firstDate: DateTime(1950),
      lastDate: DateTime(now.year + 5, 12, 31),
    );
    if (picked != null) {
      setState(() {
        if (isBirth) {
          _birthDate = picked;
        } else {
          _arrivalDate = picked;
        }
      });
    }
  }

  Future<void> _save() async {
    if (!_formKey.currentState!.validate()) return;

    final now = DateTime.now();
    final companion = StudentsCompanion(
      id: isEdit
          ? drift.Value(widget.student!.id)
          : const drift.Value.absent(),
      firstNameDari: drift.Value(_firstNameDari.text.trim()),
      lastNameDari: drift.Value(_lastNameDari.text.trim()),
      firstNameRu: drift.Value(_emptyToNull(_firstNameRu.text)),
      lastNameRu: drift.Value(_emptyToNull(_lastNameRu.text)),
      firstNameLatin: drift.Value(_emptyToNull(_firstNameLatin.text)),
      lastNameLatin: drift.Value(_emptyToNull(_lastNameLatin.text)),
      gender: drift.Value(_gender),
      birthDate: drift.Value(_birthDate),
      phone: drift.Value(_emptyToNull(_phone.text)),
      email: drift.Value(_emptyToNull(_email.text)),
      passportNo: drift.Value(_emptyToNull(_passportNo.text)),
      studentCardNo: drift.Value(_emptyToNull(_studentCardNo.text)),
      universityId: drift.Value(_emptyToNull(_universityId.text)),
      faculty: drift.Value(_emptyToNull(_faculty.text)),
      studyYear: drift.Value(int.tryParse(_studyYear.text)),
      programType: drift.Value(_programType),
      studyLanguage: drift.Value(_studyLanguage),
      arrivalDate: drift.Value(_arrivalDate),
      status: drift.Value(_status),
      homeAddress: drift.Value(_emptyToNull(_homeAddress.text)),
      city: drift.Value(_emptyToNull(_city.text)),
      moscowAddress: drift.Value(_emptyToNull(_moscowAddress.text)),
      familyContact: drift.Value(_emptyToNull(_familyContact.text)),
      photoPath: drift.Value(_photoFileName),
      notes: drift.Value(_emptyToNull(_notes.text)),
      updatedAt: drift.Value(now),
      createdAt: isEdit
          ? drift.Value(widget.student!.createdAt)
          : drift.Value(now),
    );

    if (isEdit) {
      final updated = widget.student!.copyWith(
        firstNameDari: _firstNameDari.text.trim(),
        lastNameDari: _lastNameDari.text.trim(),
        firstNameRu: drift.Value(_emptyToNull(_firstNameRu.text)),
        lastNameRu: drift.Value(_emptyToNull(_lastNameRu.text)),
        firstNameLatin: drift.Value(_emptyToNull(_firstNameLatin.text)),
        lastNameLatin: drift.Value(_emptyToNull(_lastNameLatin.text)),
        gender: _gender,
        birthDate: drift.Value(_birthDate),
        phone: drift.Value(_emptyToNull(_phone.text)),
        email: drift.Value(_emptyToNull(_email.text)),
        passportNo: drift.Value(_emptyToNull(_passportNo.text)),
        studentCardNo: drift.Value(_emptyToNull(_studentCardNo.text)),
        universityId: drift.Value(_emptyToNull(_universityId.text)),
        faculty: drift.Value(_emptyToNull(_faculty.text)),
        studyYear: drift.Value(int.tryParse(_studyYear.text)),
        programType: _programType,
        studyLanguage: _studyLanguage,
        arrivalDate: drift.Value(_arrivalDate),
        status: _status,
        homeAddress: drift.Value(_emptyToNull(_homeAddress.text)),
        city: drift.Value(_emptyToNull(_city.text)),
        moscowAddress: drift.Value(_emptyToNull(_moscowAddress.text)),
        familyContact: drift.Value(_emptyToNull(_familyContact.text)),
        photoPath: drift.Value(_photoFileName),
        notes: drift.Value(_emptyToNull(_notes.text)),
        updatedAt: now,
        // Note: Drift's copyWith automatically handles createdAt, so no need to pass it.
      );
      await widget.db.updateStudent(updated);
    } else {
      await widget.db.insertStudent(companion);
    }

    // mark as saved so dispose doesn't delete the new photo
    _originalPhoto = _photoFileName;

    if (mounted) Navigator.of(context).pop(true);
  }

  String? _emptyToNull(String v) => v.trim().isEmpty ? null : v.trim();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _header(),
          Expanded(
            child: Form(
              key: _formKey,
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(24),
                child: Center(
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 1000),
                    child: Column(
                      children: [
                        _photoCard(),
                        _namesCard(),
                        _personalCard(),
                        _identityCard(),
                        _academicCard(),
                        _addressCard(),
                        _notesCard(),
                        const SizedBox(height: 12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            OutlinedButton(
                              onPressed: () => Navigator.of(context).pop(false),
                              child: const Text('Cancel'),
                            ),
                            const SizedBox(width: 12),
                            FilledButton.icon(
                              onPressed: _save,
                              icon: const Icon(Icons.save_outlined),
                              label: Text(isEdit
                                  ? 'Save changes'
                                  : 'Create student'),
                            ),
                          ],
                        ),
                        const SizedBox(height: 40),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _header() {
    return Container(
      padding: const EdgeInsets.fromLTRB(24, 18, 24, 18),
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(bottom: BorderSide(color: Color(0xFFDDE3E7))),
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: () => Navigator.of(context).pop(false),
            icon: const Icon(Icons.arrow_back),
          ),
          const SizedBox(width: 8),
          Text(
            isEdit ? 'Edit student' : 'New student',
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
          ),
        ],
      ),
    );
  }

  Widget _photoCard() {
    return SectionCard(
      title: 'Photo',
      icon: Icons.photo_camera_outlined,
      children: [
        PhotoField(
          initialFileName: widget.student?.photoPath,
          onChanged: (name) => setState(() => _photoFileName = name),
        ),
      ],
    );
  }

  Widget _namesCard() {
    return SectionCard(
      title: 'Names',
      icon: Icons.badge_outlined,
      children: [
        Row(children: [
          Expanded(
            child: LabeledField(
              label: 'First name (Dari) *',
              child: TextFormField(
                controller: _firstNameDari,
                validator: _required,
                textDirection: flutter.TextDirection.rtl,
              ),
            ),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: LabeledField(
              label: 'Last name (Dari) *',
              child: TextFormField(
                controller: _lastNameDari,
                validator: _required,
                textDirection: flutter.TextDirection.rtl,
              ),
            ),
          ),
        ]),
        const SizedBox(height: 14),
        Row(children: [
          Expanded(
            child: LabeledField(
              label: 'First name (Russian)',
              child: TextFormField(controller: _firstNameRu),
            ),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: LabeledField(
              label: 'Last name (Russian)',
              child: TextFormField(controller: _lastNameRu),
            ),
          ),
        ]),
        const SizedBox(height: 14),
        Row(children: [
          Expanded(
            child: LabeledField(
              label: 'First name (Latin)',
              child: TextFormField(controller: _firstNameLatin),
            ),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: LabeledField(
              label: 'Last name (Latin)',
              child: TextFormField(controller: _lastNameLatin),
            ),
          ),
        ]),
      ],
    );
  }

  Widget _personalCard() {
    return SectionCard(
      title: 'Personal',
      icon: Icons.person_outline,
      children: [
        Row(children: [
          Expanded(
            child: LabeledField(
              label: 'Gender *',
              child: DropdownButtonFormField<String>(
                initialValue: _gender,
                items: const [
                  DropdownMenuItem(value: 'male', child: Text('Male')),
                  DropdownMenuItem(value: 'female', child: Text('Female')),
                ],
                onChanged: (v) => setState(() => _gender = v ?? 'male'),
              ),
            ),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: LabeledField(
              label: 'Birth date',
              child: InkWell(
                onTap: () => _pickDate(isBirth: true),
                child: InputDecorator(
                  decoration: const InputDecoration(),
                  child: Text(
                    _birthDate == null
                        ? 'Select date'
                        : DateFormat('yyyy-MM-dd').format(_birthDate!),
                    style: TextStyle(
                      color: _birthDate == null
                          ? const Color(0xFF7A8A93)
                          : null,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: LabeledField(
              label: 'Phone',
              child: TextFormField(controller: _phone),
            ),
          ),
        ]),
        const SizedBox(height: 14),
        Row(children: [
          Expanded(
            child: LabeledField(
              label: 'Email',
              child: TextFormField(controller: _email),
            ),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: LabeledField(
              label: 'Family contact',
              child: TextFormField(controller: _familyContact),
            ),
          ),
        ]),
      ],
    );
  }

  Widget _identityCard() {
    return SectionCard(
      title: 'Identity',
      icon: Icons.credit_card_outlined,
      children: [
        Row(children: [
          Expanded(
            child: LabeledField(
              label: 'Passport no.',
              child: TextFormField(controller: _passportNo),
            ),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: LabeledField(
              label: 'Student card no.',
              child: TextFormField(controller: _studentCardNo),
            ),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: LabeledField(
              label: 'University ID',
              child: TextFormField(controller: _universityId),
            ),
          ),
        ]),
      ],
    );
  }

  Widget _academicCard() {
    return SectionCard(
      title: 'Academic',
      icon: Icons.school_outlined,
      children: [
        Row(children: [
          Expanded(
            child: LabeledField(
              label: 'Faculty',
              child: TextFormField(controller: _faculty),
            ),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: LabeledField(
              label: 'Study year',
              child: TextFormField(
                controller: _studyYear,
                keyboardType: TextInputType.number,
              ),
            ),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: LabeledField(
              label: 'Arrival date',
              child: InkWell(
                onTap: () => _pickDate(isBirth: false),
                child: InputDecorator(
                  decoration: const InputDecoration(),
                  child: Text(
                    _arrivalDate == null
                        ? 'Select date'
                        : DateFormat('yyyy-MM-dd').format(_arrivalDate!),
                    style: TextStyle(
                      color: _arrivalDate == null
                          ? const Color(0xFF7A8A93)
                          : null,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ]),
        const SizedBox(height: 14),
        Row(children: [
          Expanded(
            child: LabeledField(
              label: 'Program type *',
              child: DropdownButtonFormField<String>(
                initialValue: _programType,
                items: programOptions
                    .map((p) => DropdownMenuItem(
                    value: p, child: Text(_title(p))))
                    .toList(),
                onChanged: (v) =>
                    setState(() => _programType = v ?? 'bachelor'),
              ),
            ),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: LabeledField(
              label: 'Study language *',
              child: DropdownButtonFormField<String>(
                initialValue: _studyLanguage,
                items: langOptions
                    .map((p) => DropdownMenuItem(
                    value: p, child: Text(_title(p))))
                    .toList(),
                onChanged: (v) =>
                    setState(() => _studyLanguage = v ?? 'en'),
              ),
            ),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: LabeledField(
              label: 'Status *',
              child: DropdownButtonFormField<String>(
                initialValue: _status,
                items: statusOptions
                    .map((p) => DropdownMenuItem(
                    value: p, child: Text(_title(p))))
                    .toList(),
                onChanged: (v) => setState(() => _status = v ?? 'active'),
              ),
            ),
          ),
        ]),
      ],
    );
  }

  Widget _addressCard() {
    return SectionCard(
      title: 'Address',
      icon: Icons.location_on_outlined,
      children: [
        Row(children: [
          Expanded(
            flex: 2,
            child: LabeledField(
              label: 'Home address',
              child: TextFormField(controller: _homeAddress),
            ),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: LabeledField(
              label: 'City',
              child: TextFormField(controller: _city),
            ),
          ),
        ]),
        const SizedBox(height: 14),
        LabeledField(
          label: 'Moscow address',
          child: TextFormField(controller: _moscowAddress),
        ),
      ],
    );
  }

  Widget _notesCard() {
    return SectionCard(
      title: 'Notes',
      icon: Icons.notes_outlined,
      children: [
        LabeledField(
          label: 'Internal notes',
          child: TextFormField(
            controller: _notes,
            maxLines: 4,
          ),
        ),
      ],
    );
  }

  String _title(String s) =>
      s.isEmpty ? s : s[0].toUpperCase() + s.substring(1);

  String? _required(String? v) =>
      (v == null || v.trim().isEmpty) ? 'Required' : null;
}