// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $StudentsTable extends Students with TableInfo<$StudentsTable, Student> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $StudentsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _firstNameDariMeta = const VerificationMeta(
    'firstNameDari',
  );
  @override
  late final GeneratedColumn<String> firstNameDari = GeneratedColumn<String>(
    'first_name_dari',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(
      minTextLength: 1,
      maxTextLength: 100,
    ),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _lastNameDariMeta = const VerificationMeta(
    'lastNameDari',
  );
  @override
  late final GeneratedColumn<String> lastNameDari = GeneratedColumn<String>(
    'last_name_dari',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(
      minTextLength: 1,
      maxTextLength: 100,
    ),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _firstNameRuMeta = const VerificationMeta(
    'firstNameRu',
  );
  @override
  late final GeneratedColumn<String> firstNameRu = GeneratedColumn<String>(
    'first_name_ru',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _lastNameRuMeta = const VerificationMeta(
    'lastNameRu',
  );
  @override
  late final GeneratedColumn<String> lastNameRu = GeneratedColumn<String>(
    'last_name_ru',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _firstNameLatinMeta = const VerificationMeta(
    'firstNameLatin',
  );
  @override
  late final GeneratedColumn<String> firstNameLatin = GeneratedColumn<String>(
    'first_name_latin',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _lastNameLatinMeta = const VerificationMeta(
    'lastNameLatin',
  );
  @override
  late final GeneratedColumn<String> lastNameLatin = GeneratedColumn<String>(
    'last_name_latin',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _genderMeta = const VerificationMeta('gender');
  @override
  late final GeneratedColumn<String> gender = GeneratedColumn<String>(
    'gender',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _birthDateMeta = const VerificationMeta(
    'birthDate',
  );
  @override
  late final GeneratedColumn<DateTime> birthDate = GeneratedColumn<DateTime>(
    'birth_date',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _phoneMeta = const VerificationMeta('phone');
  @override
  late final GeneratedColumn<String> phone = GeneratedColumn<String>(
    'phone',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
    'email',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _passportNoMeta = const VerificationMeta(
    'passportNo',
  );
  @override
  late final GeneratedColumn<String> passportNo = GeneratedColumn<String>(
    'passport_no',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _studentCardNoMeta = const VerificationMeta(
    'studentCardNo',
  );
  @override
  late final GeneratedColumn<String> studentCardNo = GeneratedColumn<String>(
    'student_card_no',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _universityIdMeta = const VerificationMeta(
    'universityId',
  );
  @override
  late final GeneratedColumn<String> universityId = GeneratedColumn<String>(
    'university_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _facultyMeta = const VerificationMeta(
    'faculty',
  );
  @override
  late final GeneratedColumn<String> faculty = GeneratedColumn<String>(
    'faculty',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _studyYearMeta = const VerificationMeta(
    'studyYear',
  );
  @override
  late final GeneratedColumn<int> studyYear = GeneratedColumn<int>(
    'study_year',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _programTypeMeta = const VerificationMeta(
    'programType',
  );
  @override
  late final GeneratedColumn<String> programType = GeneratedColumn<String>(
    'program_type',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _studyLanguageMeta = const VerificationMeta(
    'studyLanguage',
  );
  @override
  late final GeneratedColumn<String> studyLanguage = GeneratedColumn<String>(
    'study_language',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _arrivalDateMeta = const VerificationMeta(
    'arrivalDate',
  );
  @override
  late final GeneratedColumn<DateTime> arrivalDate = GeneratedColumn<DateTime>(
    'arrival_date',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
    'status',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _homeAddressMeta = const VerificationMeta(
    'homeAddress',
  );
  @override
  late final GeneratedColumn<String> homeAddress = GeneratedColumn<String>(
    'home_address',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _cityMeta = const VerificationMeta('city');
  @override
  late final GeneratedColumn<String> city = GeneratedColumn<String>(
    'city',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _moscowAddressMeta = const VerificationMeta(
    'moscowAddress',
  );
  @override
  late final GeneratedColumn<String> moscowAddress = GeneratedColumn<String>(
    'moscow_address',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _familyContactMeta = const VerificationMeta(
    'familyContact',
  );
  @override
  late final GeneratedColumn<String> familyContact = GeneratedColumn<String>(
    'family_contact',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _photoPathMeta = const VerificationMeta(
    'photoPath',
  );
  @override
  late final GeneratedColumn<String> photoPath = GeneratedColumn<String>(
    'photo_path',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _notesMeta = const VerificationMeta('notes');
  @override
  late final GeneratedColumn<String> notes = GeneratedColumn<String>(
    'notes',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    firstNameDari,
    lastNameDari,
    firstNameRu,
    lastNameRu,
    firstNameLatin,
    lastNameLatin,
    gender,
    birthDate,
    phone,
    email,
    passportNo,
    studentCardNo,
    universityId,
    faculty,
    studyYear,
    programType,
    studyLanguage,
    arrivalDate,
    status,
    homeAddress,
    city,
    moscowAddress,
    familyContact,
    photoPath,
    notes,
    createdAt,
    updatedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'students';
  @override
  VerificationContext validateIntegrity(
    Insertable<Student> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('first_name_dari')) {
      context.handle(
        _firstNameDariMeta,
        firstNameDari.isAcceptableOrUnknown(
          data['first_name_dari']!,
          _firstNameDariMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_firstNameDariMeta);
    }
    if (data.containsKey('last_name_dari')) {
      context.handle(
        _lastNameDariMeta,
        lastNameDari.isAcceptableOrUnknown(
          data['last_name_dari']!,
          _lastNameDariMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_lastNameDariMeta);
    }
    if (data.containsKey('first_name_ru')) {
      context.handle(
        _firstNameRuMeta,
        firstNameRu.isAcceptableOrUnknown(
          data['first_name_ru']!,
          _firstNameRuMeta,
        ),
      );
    }
    if (data.containsKey('last_name_ru')) {
      context.handle(
        _lastNameRuMeta,
        lastNameRu.isAcceptableOrUnknown(
          data['last_name_ru']!,
          _lastNameRuMeta,
        ),
      );
    }
    if (data.containsKey('first_name_latin')) {
      context.handle(
        _firstNameLatinMeta,
        firstNameLatin.isAcceptableOrUnknown(
          data['first_name_latin']!,
          _firstNameLatinMeta,
        ),
      );
    }
    if (data.containsKey('last_name_latin')) {
      context.handle(
        _lastNameLatinMeta,
        lastNameLatin.isAcceptableOrUnknown(
          data['last_name_latin']!,
          _lastNameLatinMeta,
        ),
      );
    }
    if (data.containsKey('gender')) {
      context.handle(
        _genderMeta,
        gender.isAcceptableOrUnknown(data['gender']!, _genderMeta),
      );
    } else if (isInserting) {
      context.missing(_genderMeta);
    }
    if (data.containsKey('birth_date')) {
      context.handle(
        _birthDateMeta,
        birthDate.isAcceptableOrUnknown(data['birth_date']!, _birthDateMeta),
      );
    }
    if (data.containsKey('phone')) {
      context.handle(
        _phoneMeta,
        phone.isAcceptableOrUnknown(data['phone']!, _phoneMeta),
      );
    }
    if (data.containsKey('email')) {
      context.handle(
        _emailMeta,
        email.isAcceptableOrUnknown(data['email']!, _emailMeta),
      );
    }
    if (data.containsKey('passport_no')) {
      context.handle(
        _passportNoMeta,
        passportNo.isAcceptableOrUnknown(data['passport_no']!, _passportNoMeta),
      );
    }
    if (data.containsKey('student_card_no')) {
      context.handle(
        _studentCardNoMeta,
        studentCardNo.isAcceptableOrUnknown(
          data['student_card_no']!,
          _studentCardNoMeta,
        ),
      );
    }
    if (data.containsKey('university_id')) {
      context.handle(
        _universityIdMeta,
        universityId.isAcceptableOrUnknown(
          data['university_id']!,
          _universityIdMeta,
        ),
      );
    }
    if (data.containsKey('faculty')) {
      context.handle(
        _facultyMeta,
        faculty.isAcceptableOrUnknown(data['faculty']!, _facultyMeta),
      );
    }
    if (data.containsKey('study_year')) {
      context.handle(
        _studyYearMeta,
        studyYear.isAcceptableOrUnknown(data['study_year']!, _studyYearMeta),
      );
    }
    if (data.containsKey('program_type')) {
      context.handle(
        _programTypeMeta,
        programType.isAcceptableOrUnknown(
          data['program_type']!,
          _programTypeMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_programTypeMeta);
    }
    if (data.containsKey('study_language')) {
      context.handle(
        _studyLanguageMeta,
        studyLanguage.isAcceptableOrUnknown(
          data['study_language']!,
          _studyLanguageMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_studyLanguageMeta);
    }
    if (data.containsKey('arrival_date')) {
      context.handle(
        _arrivalDateMeta,
        arrivalDate.isAcceptableOrUnknown(
          data['arrival_date']!,
          _arrivalDateMeta,
        ),
      );
    }
    if (data.containsKey('status')) {
      context.handle(
        _statusMeta,
        status.isAcceptableOrUnknown(data['status']!, _statusMeta),
      );
    } else if (isInserting) {
      context.missing(_statusMeta);
    }
    if (data.containsKey('home_address')) {
      context.handle(
        _homeAddressMeta,
        homeAddress.isAcceptableOrUnknown(
          data['home_address']!,
          _homeAddressMeta,
        ),
      );
    }
    if (data.containsKey('city')) {
      context.handle(
        _cityMeta,
        city.isAcceptableOrUnknown(data['city']!, _cityMeta),
      );
    }
    if (data.containsKey('moscow_address')) {
      context.handle(
        _moscowAddressMeta,
        moscowAddress.isAcceptableOrUnknown(
          data['moscow_address']!,
          _moscowAddressMeta,
        ),
      );
    }
    if (data.containsKey('family_contact')) {
      context.handle(
        _familyContactMeta,
        familyContact.isAcceptableOrUnknown(
          data['family_contact']!,
          _familyContactMeta,
        ),
      );
    }
    if (data.containsKey('photo_path')) {
      context.handle(
        _photoPathMeta,
        photoPath.isAcceptableOrUnknown(data['photo_path']!, _photoPathMeta),
      );
    }
    if (data.containsKey('notes')) {
      context.handle(
        _notesMeta,
        notes.isAcceptableOrUnknown(data['notes']!, _notesMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Student map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Student(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      firstNameDari: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}first_name_dari'],
      )!,
      lastNameDari: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}last_name_dari'],
      )!,
      firstNameRu: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}first_name_ru'],
      ),
      lastNameRu: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}last_name_ru'],
      ),
      firstNameLatin: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}first_name_latin'],
      ),
      lastNameLatin: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}last_name_latin'],
      ),
      gender: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}gender'],
      )!,
      birthDate: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}birth_date'],
      ),
      phone: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}phone'],
      ),
      email: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}email'],
      ),
      passportNo: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}passport_no'],
      ),
      studentCardNo: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}student_card_no'],
      ),
      universityId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}university_id'],
      ),
      faculty: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}faculty'],
      ),
      studyYear: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}study_year'],
      ),
      programType: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}program_type'],
      )!,
      studyLanguage: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}study_language'],
      )!,
      arrivalDate: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}arrival_date'],
      ),
      status: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}status'],
      )!,
      homeAddress: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}home_address'],
      ),
      city: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}city'],
      ),
      moscowAddress: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}moscow_address'],
      ),
      familyContact: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}family_contact'],
      ),
      photoPath: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}photo_path'],
      ),
      notes: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}notes'],
      ),
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      )!,
    );
  }

  @override
  $StudentsTable createAlias(String alias) {
    return $StudentsTable(attachedDatabase, alias);
  }
}

class Student extends DataClass implements Insertable<Student> {
  final int id;
  final String firstNameDari;
  final String lastNameDari;
  final String? firstNameRu;
  final String? lastNameRu;
  final String? firstNameLatin;
  final String? lastNameLatin;
  final String gender;
  final DateTime? birthDate;
  final String? phone;
  final String? email;
  final String? passportNo;
  final String? studentCardNo;
  final String? universityId;
  final String? faculty;
  final int? studyYear;
  final String programType;
  final String studyLanguage;
  final DateTime? arrivalDate;
  final String status;
  final String? homeAddress;
  final String? city;
  final String? moscowAddress;
  final String? familyContact;
  final String? photoPath;
  final String? notes;
  final DateTime createdAt;
  final DateTime updatedAt;
  const Student({
    required this.id,
    required this.firstNameDari,
    required this.lastNameDari,
    this.firstNameRu,
    this.lastNameRu,
    this.firstNameLatin,
    this.lastNameLatin,
    required this.gender,
    this.birthDate,
    this.phone,
    this.email,
    this.passportNo,
    this.studentCardNo,
    this.universityId,
    this.faculty,
    this.studyYear,
    required this.programType,
    required this.studyLanguage,
    this.arrivalDate,
    required this.status,
    this.homeAddress,
    this.city,
    this.moscowAddress,
    this.familyContact,
    this.photoPath,
    this.notes,
    required this.createdAt,
    required this.updatedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['first_name_dari'] = Variable<String>(firstNameDari);
    map['last_name_dari'] = Variable<String>(lastNameDari);
    if (!nullToAbsent || firstNameRu != null) {
      map['first_name_ru'] = Variable<String>(firstNameRu);
    }
    if (!nullToAbsent || lastNameRu != null) {
      map['last_name_ru'] = Variable<String>(lastNameRu);
    }
    if (!nullToAbsent || firstNameLatin != null) {
      map['first_name_latin'] = Variable<String>(firstNameLatin);
    }
    if (!nullToAbsent || lastNameLatin != null) {
      map['last_name_latin'] = Variable<String>(lastNameLatin);
    }
    map['gender'] = Variable<String>(gender);
    if (!nullToAbsent || birthDate != null) {
      map['birth_date'] = Variable<DateTime>(birthDate);
    }
    if (!nullToAbsent || phone != null) {
      map['phone'] = Variable<String>(phone);
    }
    if (!nullToAbsent || email != null) {
      map['email'] = Variable<String>(email);
    }
    if (!nullToAbsent || passportNo != null) {
      map['passport_no'] = Variable<String>(passportNo);
    }
    if (!nullToAbsent || studentCardNo != null) {
      map['student_card_no'] = Variable<String>(studentCardNo);
    }
    if (!nullToAbsent || universityId != null) {
      map['university_id'] = Variable<String>(universityId);
    }
    if (!nullToAbsent || faculty != null) {
      map['faculty'] = Variable<String>(faculty);
    }
    if (!nullToAbsent || studyYear != null) {
      map['study_year'] = Variable<int>(studyYear);
    }
    map['program_type'] = Variable<String>(programType);
    map['study_language'] = Variable<String>(studyLanguage);
    if (!nullToAbsent || arrivalDate != null) {
      map['arrival_date'] = Variable<DateTime>(arrivalDate);
    }
    map['status'] = Variable<String>(status);
    if (!nullToAbsent || homeAddress != null) {
      map['home_address'] = Variable<String>(homeAddress);
    }
    if (!nullToAbsent || city != null) {
      map['city'] = Variable<String>(city);
    }
    if (!nullToAbsent || moscowAddress != null) {
      map['moscow_address'] = Variable<String>(moscowAddress);
    }
    if (!nullToAbsent || familyContact != null) {
      map['family_contact'] = Variable<String>(familyContact);
    }
    if (!nullToAbsent || photoPath != null) {
      map['photo_path'] = Variable<String>(photoPath);
    }
    if (!nullToAbsent || notes != null) {
      map['notes'] = Variable<String>(notes);
    }
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    return map;
  }

  StudentsCompanion toCompanion(bool nullToAbsent) {
    return StudentsCompanion(
      id: Value(id),
      firstNameDari: Value(firstNameDari),
      lastNameDari: Value(lastNameDari),
      firstNameRu: firstNameRu == null && nullToAbsent
          ? const Value.absent()
          : Value(firstNameRu),
      lastNameRu: lastNameRu == null && nullToAbsent
          ? const Value.absent()
          : Value(lastNameRu),
      firstNameLatin: firstNameLatin == null && nullToAbsent
          ? const Value.absent()
          : Value(firstNameLatin),
      lastNameLatin: lastNameLatin == null && nullToAbsent
          ? const Value.absent()
          : Value(lastNameLatin),
      gender: Value(gender),
      birthDate: birthDate == null && nullToAbsent
          ? const Value.absent()
          : Value(birthDate),
      phone: phone == null && nullToAbsent
          ? const Value.absent()
          : Value(phone),
      email: email == null && nullToAbsent
          ? const Value.absent()
          : Value(email),
      passportNo: passportNo == null && nullToAbsent
          ? const Value.absent()
          : Value(passportNo),
      studentCardNo: studentCardNo == null && nullToAbsent
          ? const Value.absent()
          : Value(studentCardNo),
      universityId: universityId == null && nullToAbsent
          ? const Value.absent()
          : Value(universityId),
      faculty: faculty == null && nullToAbsent
          ? const Value.absent()
          : Value(faculty),
      studyYear: studyYear == null && nullToAbsent
          ? const Value.absent()
          : Value(studyYear),
      programType: Value(programType),
      studyLanguage: Value(studyLanguage),
      arrivalDate: arrivalDate == null && nullToAbsent
          ? const Value.absent()
          : Value(arrivalDate),
      status: Value(status),
      homeAddress: homeAddress == null && nullToAbsent
          ? const Value.absent()
          : Value(homeAddress),
      city: city == null && nullToAbsent ? const Value.absent() : Value(city),
      moscowAddress: moscowAddress == null && nullToAbsent
          ? const Value.absent()
          : Value(moscowAddress),
      familyContact: familyContact == null && nullToAbsent
          ? const Value.absent()
          : Value(familyContact),
      photoPath: photoPath == null && nullToAbsent
          ? const Value.absent()
          : Value(photoPath),
      notes: notes == null && nullToAbsent
          ? const Value.absent()
          : Value(notes),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
    );
  }

  factory Student.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Student(
      id: serializer.fromJson<int>(json['id']),
      firstNameDari: serializer.fromJson<String>(json['firstNameDari']),
      lastNameDari: serializer.fromJson<String>(json['lastNameDari']),
      firstNameRu: serializer.fromJson<String?>(json['firstNameRu']),
      lastNameRu: serializer.fromJson<String?>(json['lastNameRu']),
      firstNameLatin: serializer.fromJson<String?>(json['firstNameLatin']),
      lastNameLatin: serializer.fromJson<String?>(json['lastNameLatin']),
      gender: serializer.fromJson<String>(json['gender']),
      birthDate: serializer.fromJson<DateTime?>(json['birthDate']),
      phone: serializer.fromJson<String?>(json['phone']),
      email: serializer.fromJson<String?>(json['email']),
      passportNo: serializer.fromJson<String?>(json['passportNo']),
      studentCardNo: serializer.fromJson<String?>(json['studentCardNo']),
      universityId: serializer.fromJson<String?>(json['universityId']),
      faculty: serializer.fromJson<String?>(json['faculty']),
      studyYear: serializer.fromJson<int?>(json['studyYear']),
      programType: serializer.fromJson<String>(json['programType']),
      studyLanguage: serializer.fromJson<String>(json['studyLanguage']),
      arrivalDate: serializer.fromJson<DateTime?>(json['arrivalDate']),
      status: serializer.fromJson<String>(json['status']),
      homeAddress: serializer.fromJson<String?>(json['homeAddress']),
      city: serializer.fromJson<String?>(json['city']),
      moscowAddress: serializer.fromJson<String?>(json['moscowAddress']),
      familyContact: serializer.fromJson<String?>(json['familyContact']),
      photoPath: serializer.fromJson<String?>(json['photoPath']),
      notes: serializer.fromJson<String?>(json['notes']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'firstNameDari': serializer.toJson<String>(firstNameDari),
      'lastNameDari': serializer.toJson<String>(lastNameDari),
      'firstNameRu': serializer.toJson<String?>(firstNameRu),
      'lastNameRu': serializer.toJson<String?>(lastNameRu),
      'firstNameLatin': serializer.toJson<String?>(firstNameLatin),
      'lastNameLatin': serializer.toJson<String?>(lastNameLatin),
      'gender': serializer.toJson<String>(gender),
      'birthDate': serializer.toJson<DateTime?>(birthDate),
      'phone': serializer.toJson<String?>(phone),
      'email': serializer.toJson<String?>(email),
      'passportNo': serializer.toJson<String?>(passportNo),
      'studentCardNo': serializer.toJson<String?>(studentCardNo),
      'universityId': serializer.toJson<String?>(universityId),
      'faculty': serializer.toJson<String?>(faculty),
      'studyYear': serializer.toJson<int?>(studyYear),
      'programType': serializer.toJson<String>(programType),
      'studyLanguage': serializer.toJson<String>(studyLanguage),
      'arrivalDate': serializer.toJson<DateTime?>(arrivalDate),
      'status': serializer.toJson<String>(status),
      'homeAddress': serializer.toJson<String?>(homeAddress),
      'city': serializer.toJson<String?>(city),
      'moscowAddress': serializer.toJson<String?>(moscowAddress),
      'familyContact': serializer.toJson<String?>(familyContact),
      'photoPath': serializer.toJson<String?>(photoPath),
      'notes': serializer.toJson<String?>(notes),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  Student copyWith({
    int? id,
    String? firstNameDari,
    String? lastNameDari,
    Value<String?> firstNameRu = const Value.absent(),
    Value<String?> lastNameRu = const Value.absent(),
    Value<String?> firstNameLatin = const Value.absent(),
    Value<String?> lastNameLatin = const Value.absent(),
    String? gender,
    Value<DateTime?> birthDate = const Value.absent(),
    Value<String?> phone = const Value.absent(),
    Value<String?> email = const Value.absent(),
    Value<String?> passportNo = const Value.absent(),
    Value<String?> studentCardNo = const Value.absent(),
    Value<String?> universityId = const Value.absent(),
    Value<String?> faculty = const Value.absent(),
    Value<int?> studyYear = const Value.absent(),
    String? programType,
    String? studyLanguage,
    Value<DateTime?> arrivalDate = const Value.absent(),
    String? status,
    Value<String?> homeAddress = const Value.absent(),
    Value<String?> city = const Value.absent(),
    Value<String?> moscowAddress = const Value.absent(),
    Value<String?> familyContact = const Value.absent(),
    Value<String?> photoPath = const Value.absent(),
    Value<String?> notes = const Value.absent(),
    DateTime? createdAt,
    DateTime? updatedAt,
  }) => Student(
    id: id ?? this.id,
    firstNameDari: firstNameDari ?? this.firstNameDari,
    lastNameDari: lastNameDari ?? this.lastNameDari,
    firstNameRu: firstNameRu.present ? firstNameRu.value : this.firstNameRu,
    lastNameRu: lastNameRu.present ? lastNameRu.value : this.lastNameRu,
    firstNameLatin: firstNameLatin.present
        ? firstNameLatin.value
        : this.firstNameLatin,
    lastNameLatin: lastNameLatin.present
        ? lastNameLatin.value
        : this.lastNameLatin,
    gender: gender ?? this.gender,
    birthDate: birthDate.present ? birthDate.value : this.birthDate,
    phone: phone.present ? phone.value : this.phone,
    email: email.present ? email.value : this.email,
    passportNo: passportNo.present ? passportNo.value : this.passportNo,
    studentCardNo: studentCardNo.present
        ? studentCardNo.value
        : this.studentCardNo,
    universityId: universityId.present ? universityId.value : this.universityId,
    faculty: faculty.present ? faculty.value : this.faculty,
    studyYear: studyYear.present ? studyYear.value : this.studyYear,
    programType: programType ?? this.programType,
    studyLanguage: studyLanguage ?? this.studyLanguage,
    arrivalDate: arrivalDate.present ? arrivalDate.value : this.arrivalDate,
    status: status ?? this.status,
    homeAddress: homeAddress.present ? homeAddress.value : this.homeAddress,
    city: city.present ? city.value : this.city,
    moscowAddress: moscowAddress.present
        ? moscowAddress.value
        : this.moscowAddress,
    familyContact: familyContact.present
        ? familyContact.value
        : this.familyContact,
    photoPath: photoPath.present ? photoPath.value : this.photoPath,
    notes: notes.present ? notes.value : this.notes,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
  );
  Student copyWithCompanion(StudentsCompanion data) {
    return Student(
      id: data.id.present ? data.id.value : this.id,
      firstNameDari: data.firstNameDari.present
          ? data.firstNameDari.value
          : this.firstNameDari,
      lastNameDari: data.lastNameDari.present
          ? data.lastNameDari.value
          : this.lastNameDari,
      firstNameRu: data.firstNameRu.present
          ? data.firstNameRu.value
          : this.firstNameRu,
      lastNameRu: data.lastNameRu.present
          ? data.lastNameRu.value
          : this.lastNameRu,
      firstNameLatin: data.firstNameLatin.present
          ? data.firstNameLatin.value
          : this.firstNameLatin,
      lastNameLatin: data.lastNameLatin.present
          ? data.lastNameLatin.value
          : this.lastNameLatin,
      gender: data.gender.present ? data.gender.value : this.gender,
      birthDate: data.birthDate.present ? data.birthDate.value : this.birthDate,
      phone: data.phone.present ? data.phone.value : this.phone,
      email: data.email.present ? data.email.value : this.email,
      passportNo: data.passportNo.present
          ? data.passportNo.value
          : this.passportNo,
      studentCardNo: data.studentCardNo.present
          ? data.studentCardNo.value
          : this.studentCardNo,
      universityId: data.universityId.present
          ? data.universityId.value
          : this.universityId,
      faculty: data.faculty.present ? data.faculty.value : this.faculty,
      studyYear: data.studyYear.present ? data.studyYear.value : this.studyYear,
      programType: data.programType.present
          ? data.programType.value
          : this.programType,
      studyLanguage: data.studyLanguage.present
          ? data.studyLanguage.value
          : this.studyLanguage,
      arrivalDate: data.arrivalDate.present
          ? data.arrivalDate.value
          : this.arrivalDate,
      status: data.status.present ? data.status.value : this.status,
      homeAddress: data.homeAddress.present
          ? data.homeAddress.value
          : this.homeAddress,
      city: data.city.present ? data.city.value : this.city,
      moscowAddress: data.moscowAddress.present
          ? data.moscowAddress.value
          : this.moscowAddress,
      familyContact: data.familyContact.present
          ? data.familyContact.value
          : this.familyContact,
      photoPath: data.photoPath.present ? data.photoPath.value : this.photoPath,
      notes: data.notes.present ? data.notes.value : this.notes,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Student(')
          ..write('id: $id, ')
          ..write('firstNameDari: $firstNameDari, ')
          ..write('lastNameDari: $lastNameDari, ')
          ..write('firstNameRu: $firstNameRu, ')
          ..write('lastNameRu: $lastNameRu, ')
          ..write('firstNameLatin: $firstNameLatin, ')
          ..write('lastNameLatin: $lastNameLatin, ')
          ..write('gender: $gender, ')
          ..write('birthDate: $birthDate, ')
          ..write('phone: $phone, ')
          ..write('email: $email, ')
          ..write('passportNo: $passportNo, ')
          ..write('studentCardNo: $studentCardNo, ')
          ..write('universityId: $universityId, ')
          ..write('faculty: $faculty, ')
          ..write('studyYear: $studyYear, ')
          ..write('programType: $programType, ')
          ..write('studyLanguage: $studyLanguage, ')
          ..write('arrivalDate: $arrivalDate, ')
          ..write('status: $status, ')
          ..write('homeAddress: $homeAddress, ')
          ..write('city: $city, ')
          ..write('moscowAddress: $moscowAddress, ')
          ..write('familyContact: $familyContact, ')
          ..write('photoPath: $photoPath, ')
          ..write('notes: $notes, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
    id,
    firstNameDari,
    lastNameDari,
    firstNameRu,
    lastNameRu,
    firstNameLatin,
    lastNameLatin,
    gender,
    birthDate,
    phone,
    email,
    passportNo,
    studentCardNo,
    universityId,
    faculty,
    studyYear,
    programType,
    studyLanguage,
    arrivalDate,
    status,
    homeAddress,
    city,
    moscowAddress,
    familyContact,
    photoPath,
    notes,
    createdAt,
    updatedAt,
  ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Student &&
          other.id == this.id &&
          other.firstNameDari == this.firstNameDari &&
          other.lastNameDari == this.lastNameDari &&
          other.firstNameRu == this.firstNameRu &&
          other.lastNameRu == this.lastNameRu &&
          other.firstNameLatin == this.firstNameLatin &&
          other.lastNameLatin == this.lastNameLatin &&
          other.gender == this.gender &&
          other.birthDate == this.birthDate &&
          other.phone == this.phone &&
          other.email == this.email &&
          other.passportNo == this.passportNo &&
          other.studentCardNo == this.studentCardNo &&
          other.universityId == this.universityId &&
          other.faculty == this.faculty &&
          other.studyYear == this.studyYear &&
          other.programType == this.programType &&
          other.studyLanguage == this.studyLanguage &&
          other.arrivalDate == this.arrivalDate &&
          other.status == this.status &&
          other.homeAddress == this.homeAddress &&
          other.city == this.city &&
          other.moscowAddress == this.moscowAddress &&
          other.familyContact == this.familyContact &&
          other.photoPath == this.photoPath &&
          other.notes == this.notes &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class StudentsCompanion extends UpdateCompanion<Student> {
  final Value<int> id;
  final Value<String> firstNameDari;
  final Value<String> lastNameDari;
  final Value<String?> firstNameRu;
  final Value<String?> lastNameRu;
  final Value<String?> firstNameLatin;
  final Value<String?> lastNameLatin;
  final Value<String> gender;
  final Value<DateTime?> birthDate;
  final Value<String?> phone;
  final Value<String?> email;
  final Value<String?> passportNo;
  final Value<String?> studentCardNo;
  final Value<String?> universityId;
  final Value<String?> faculty;
  final Value<int?> studyYear;
  final Value<String> programType;
  final Value<String> studyLanguage;
  final Value<DateTime?> arrivalDate;
  final Value<String> status;
  final Value<String?> homeAddress;
  final Value<String?> city;
  final Value<String?> moscowAddress;
  final Value<String?> familyContact;
  final Value<String?> photoPath;
  final Value<String?> notes;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  const StudentsCompanion({
    this.id = const Value.absent(),
    this.firstNameDari = const Value.absent(),
    this.lastNameDari = const Value.absent(),
    this.firstNameRu = const Value.absent(),
    this.lastNameRu = const Value.absent(),
    this.firstNameLatin = const Value.absent(),
    this.lastNameLatin = const Value.absent(),
    this.gender = const Value.absent(),
    this.birthDate = const Value.absent(),
    this.phone = const Value.absent(),
    this.email = const Value.absent(),
    this.passportNo = const Value.absent(),
    this.studentCardNo = const Value.absent(),
    this.universityId = const Value.absent(),
    this.faculty = const Value.absent(),
    this.studyYear = const Value.absent(),
    this.programType = const Value.absent(),
    this.studyLanguage = const Value.absent(),
    this.arrivalDate = const Value.absent(),
    this.status = const Value.absent(),
    this.homeAddress = const Value.absent(),
    this.city = const Value.absent(),
    this.moscowAddress = const Value.absent(),
    this.familyContact = const Value.absent(),
    this.photoPath = const Value.absent(),
    this.notes = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  StudentsCompanion.insert({
    this.id = const Value.absent(),
    required String firstNameDari,
    required String lastNameDari,
    this.firstNameRu = const Value.absent(),
    this.lastNameRu = const Value.absent(),
    this.firstNameLatin = const Value.absent(),
    this.lastNameLatin = const Value.absent(),
    required String gender,
    this.birthDate = const Value.absent(),
    this.phone = const Value.absent(),
    this.email = const Value.absent(),
    this.passportNo = const Value.absent(),
    this.studentCardNo = const Value.absent(),
    this.universityId = const Value.absent(),
    this.faculty = const Value.absent(),
    this.studyYear = const Value.absent(),
    required String programType,
    required String studyLanguage,
    this.arrivalDate = const Value.absent(),
    required String status,
    this.homeAddress = const Value.absent(),
    this.city = const Value.absent(),
    this.moscowAddress = const Value.absent(),
    this.familyContact = const Value.absent(),
    this.photoPath = const Value.absent(),
    this.notes = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  }) : firstNameDari = Value(firstNameDari),
       lastNameDari = Value(lastNameDari),
       gender = Value(gender),
       programType = Value(programType),
       studyLanguage = Value(studyLanguage),
       status = Value(status);
  static Insertable<Student> custom({
    Expression<int>? id,
    Expression<String>? firstNameDari,
    Expression<String>? lastNameDari,
    Expression<String>? firstNameRu,
    Expression<String>? lastNameRu,
    Expression<String>? firstNameLatin,
    Expression<String>? lastNameLatin,
    Expression<String>? gender,
    Expression<DateTime>? birthDate,
    Expression<String>? phone,
    Expression<String>? email,
    Expression<String>? passportNo,
    Expression<String>? studentCardNo,
    Expression<String>? universityId,
    Expression<String>? faculty,
    Expression<int>? studyYear,
    Expression<String>? programType,
    Expression<String>? studyLanguage,
    Expression<DateTime>? arrivalDate,
    Expression<String>? status,
    Expression<String>? homeAddress,
    Expression<String>? city,
    Expression<String>? moscowAddress,
    Expression<String>? familyContact,
    Expression<String>? photoPath,
    Expression<String>? notes,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (firstNameDari != null) 'first_name_dari': firstNameDari,
      if (lastNameDari != null) 'last_name_dari': lastNameDari,
      if (firstNameRu != null) 'first_name_ru': firstNameRu,
      if (lastNameRu != null) 'last_name_ru': lastNameRu,
      if (firstNameLatin != null) 'first_name_latin': firstNameLatin,
      if (lastNameLatin != null) 'last_name_latin': lastNameLatin,
      if (gender != null) 'gender': gender,
      if (birthDate != null) 'birth_date': birthDate,
      if (phone != null) 'phone': phone,
      if (email != null) 'email': email,
      if (passportNo != null) 'passport_no': passportNo,
      if (studentCardNo != null) 'student_card_no': studentCardNo,
      if (universityId != null) 'university_id': universityId,
      if (faculty != null) 'faculty': faculty,
      if (studyYear != null) 'study_year': studyYear,
      if (programType != null) 'program_type': programType,
      if (studyLanguage != null) 'study_language': studyLanguage,
      if (arrivalDate != null) 'arrival_date': arrivalDate,
      if (status != null) 'status': status,
      if (homeAddress != null) 'home_address': homeAddress,
      if (city != null) 'city': city,
      if (moscowAddress != null) 'moscow_address': moscowAddress,
      if (familyContact != null) 'family_contact': familyContact,
      if (photoPath != null) 'photo_path': photoPath,
      if (notes != null) 'notes': notes,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  StudentsCompanion copyWith({
    Value<int>? id,
    Value<String>? firstNameDari,
    Value<String>? lastNameDari,
    Value<String?>? firstNameRu,
    Value<String?>? lastNameRu,
    Value<String?>? firstNameLatin,
    Value<String?>? lastNameLatin,
    Value<String>? gender,
    Value<DateTime?>? birthDate,
    Value<String?>? phone,
    Value<String?>? email,
    Value<String?>? passportNo,
    Value<String?>? studentCardNo,
    Value<String?>? universityId,
    Value<String?>? faculty,
    Value<int?>? studyYear,
    Value<String>? programType,
    Value<String>? studyLanguage,
    Value<DateTime?>? arrivalDate,
    Value<String>? status,
    Value<String?>? homeAddress,
    Value<String?>? city,
    Value<String?>? moscowAddress,
    Value<String?>? familyContact,
    Value<String?>? photoPath,
    Value<String?>? notes,
    Value<DateTime>? createdAt,
    Value<DateTime>? updatedAt,
  }) {
    return StudentsCompanion(
      id: id ?? this.id,
      firstNameDari: firstNameDari ?? this.firstNameDari,
      lastNameDari: lastNameDari ?? this.lastNameDari,
      firstNameRu: firstNameRu ?? this.firstNameRu,
      lastNameRu: lastNameRu ?? this.lastNameRu,
      firstNameLatin: firstNameLatin ?? this.firstNameLatin,
      lastNameLatin: lastNameLatin ?? this.lastNameLatin,
      gender: gender ?? this.gender,
      birthDate: birthDate ?? this.birthDate,
      phone: phone ?? this.phone,
      email: email ?? this.email,
      passportNo: passportNo ?? this.passportNo,
      studentCardNo: studentCardNo ?? this.studentCardNo,
      universityId: universityId ?? this.universityId,
      faculty: faculty ?? this.faculty,
      studyYear: studyYear ?? this.studyYear,
      programType: programType ?? this.programType,
      studyLanguage: studyLanguage ?? this.studyLanguage,
      arrivalDate: arrivalDate ?? this.arrivalDate,
      status: status ?? this.status,
      homeAddress: homeAddress ?? this.homeAddress,
      city: city ?? this.city,
      moscowAddress: moscowAddress ?? this.moscowAddress,
      familyContact: familyContact ?? this.familyContact,
      photoPath: photoPath ?? this.photoPath,
      notes: notes ?? this.notes,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (firstNameDari.present) {
      map['first_name_dari'] = Variable<String>(firstNameDari.value);
    }
    if (lastNameDari.present) {
      map['last_name_dari'] = Variable<String>(lastNameDari.value);
    }
    if (firstNameRu.present) {
      map['first_name_ru'] = Variable<String>(firstNameRu.value);
    }
    if (lastNameRu.present) {
      map['last_name_ru'] = Variable<String>(lastNameRu.value);
    }
    if (firstNameLatin.present) {
      map['first_name_latin'] = Variable<String>(firstNameLatin.value);
    }
    if (lastNameLatin.present) {
      map['last_name_latin'] = Variable<String>(lastNameLatin.value);
    }
    if (gender.present) {
      map['gender'] = Variable<String>(gender.value);
    }
    if (birthDate.present) {
      map['birth_date'] = Variable<DateTime>(birthDate.value);
    }
    if (phone.present) {
      map['phone'] = Variable<String>(phone.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (passportNo.present) {
      map['passport_no'] = Variable<String>(passportNo.value);
    }
    if (studentCardNo.present) {
      map['student_card_no'] = Variable<String>(studentCardNo.value);
    }
    if (universityId.present) {
      map['university_id'] = Variable<String>(universityId.value);
    }
    if (faculty.present) {
      map['faculty'] = Variable<String>(faculty.value);
    }
    if (studyYear.present) {
      map['study_year'] = Variable<int>(studyYear.value);
    }
    if (programType.present) {
      map['program_type'] = Variable<String>(programType.value);
    }
    if (studyLanguage.present) {
      map['study_language'] = Variable<String>(studyLanguage.value);
    }
    if (arrivalDate.present) {
      map['arrival_date'] = Variable<DateTime>(arrivalDate.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    if (homeAddress.present) {
      map['home_address'] = Variable<String>(homeAddress.value);
    }
    if (city.present) {
      map['city'] = Variable<String>(city.value);
    }
    if (moscowAddress.present) {
      map['moscow_address'] = Variable<String>(moscowAddress.value);
    }
    if (familyContact.present) {
      map['family_contact'] = Variable<String>(familyContact.value);
    }
    if (photoPath.present) {
      map['photo_path'] = Variable<String>(photoPath.value);
    }
    if (notes.present) {
      map['notes'] = Variable<String>(notes.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('StudentsCompanion(')
          ..write('id: $id, ')
          ..write('firstNameDari: $firstNameDari, ')
          ..write('lastNameDari: $lastNameDari, ')
          ..write('firstNameRu: $firstNameRu, ')
          ..write('lastNameRu: $lastNameRu, ')
          ..write('firstNameLatin: $firstNameLatin, ')
          ..write('lastNameLatin: $lastNameLatin, ')
          ..write('gender: $gender, ')
          ..write('birthDate: $birthDate, ')
          ..write('phone: $phone, ')
          ..write('email: $email, ')
          ..write('passportNo: $passportNo, ')
          ..write('studentCardNo: $studentCardNo, ')
          ..write('universityId: $universityId, ')
          ..write('faculty: $faculty, ')
          ..write('studyYear: $studyYear, ')
          ..write('programType: $programType, ')
          ..write('studyLanguage: $studyLanguage, ')
          ..write('arrivalDate: $arrivalDate, ')
          ..write('status: $status, ')
          ..write('homeAddress: $homeAddress, ')
          ..write('city: $city, ')
          ..write('moscowAddress: $moscowAddress, ')
          ..write('familyContact: $familyContact, ')
          ..write('photoPath: $photoPath, ')
          ..write('notes: $notes, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $StudentsTable students = $StudentsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [students];
}

typedef $$StudentsTableCreateCompanionBuilder =
    StudentsCompanion Function({
      Value<int> id,
      required String firstNameDari,
      required String lastNameDari,
      Value<String?> firstNameRu,
      Value<String?> lastNameRu,
      Value<String?> firstNameLatin,
      Value<String?> lastNameLatin,
      required String gender,
      Value<DateTime?> birthDate,
      Value<String?> phone,
      Value<String?> email,
      Value<String?> passportNo,
      Value<String?> studentCardNo,
      Value<String?> universityId,
      Value<String?> faculty,
      Value<int?> studyYear,
      required String programType,
      required String studyLanguage,
      Value<DateTime?> arrivalDate,
      required String status,
      Value<String?> homeAddress,
      Value<String?> city,
      Value<String?> moscowAddress,
      Value<String?> familyContact,
      Value<String?> photoPath,
      Value<String?> notes,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
    });
typedef $$StudentsTableUpdateCompanionBuilder =
    StudentsCompanion Function({
      Value<int> id,
      Value<String> firstNameDari,
      Value<String> lastNameDari,
      Value<String?> firstNameRu,
      Value<String?> lastNameRu,
      Value<String?> firstNameLatin,
      Value<String?> lastNameLatin,
      Value<String> gender,
      Value<DateTime?> birthDate,
      Value<String?> phone,
      Value<String?> email,
      Value<String?> passportNo,
      Value<String?> studentCardNo,
      Value<String?> universityId,
      Value<String?> faculty,
      Value<int?> studyYear,
      Value<String> programType,
      Value<String> studyLanguage,
      Value<DateTime?> arrivalDate,
      Value<String> status,
      Value<String?> homeAddress,
      Value<String?> city,
      Value<String?> moscowAddress,
      Value<String?> familyContact,
      Value<String?> photoPath,
      Value<String?> notes,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
    });

class $$StudentsTableFilterComposer
    extends Composer<_$AppDatabase, $StudentsTable> {
  $$StudentsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get firstNameDari => $composableBuilder(
    column: $table.firstNameDari,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get lastNameDari => $composableBuilder(
    column: $table.lastNameDari,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get firstNameRu => $composableBuilder(
    column: $table.firstNameRu,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get lastNameRu => $composableBuilder(
    column: $table.lastNameRu,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get firstNameLatin => $composableBuilder(
    column: $table.firstNameLatin,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get lastNameLatin => $composableBuilder(
    column: $table.lastNameLatin,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get gender => $composableBuilder(
    column: $table.gender,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get birthDate => $composableBuilder(
    column: $table.birthDate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get phone => $composableBuilder(
    column: $table.phone,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get email => $composableBuilder(
    column: $table.email,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get passportNo => $composableBuilder(
    column: $table.passportNo,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get studentCardNo => $composableBuilder(
    column: $table.studentCardNo,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get universityId => $composableBuilder(
    column: $table.universityId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get faculty => $composableBuilder(
    column: $table.faculty,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get studyYear => $composableBuilder(
    column: $table.studyYear,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get programType => $composableBuilder(
    column: $table.programType,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get studyLanguage => $composableBuilder(
    column: $table.studyLanguage,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get arrivalDate => $composableBuilder(
    column: $table.arrivalDate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get homeAddress => $composableBuilder(
    column: $table.homeAddress,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get city => $composableBuilder(
    column: $table.city,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get moscowAddress => $composableBuilder(
    column: $table.moscowAddress,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get familyContact => $composableBuilder(
    column: $table.familyContact,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get photoPath => $composableBuilder(
    column: $table.photoPath,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get notes => $composableBuilder(
    column: $table.notes,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$StudentsTableOrderingComposer
    extends Composer<_$AppDatabase, $StudentsTable> {
  $$StudentsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get firstNameDari => $composableBuilder(
    column: $table.firstNameDari,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get lastNameDari => $composableBuilder(
    column: $table.lastNameDari,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get firstNameRu => $composableBuilder(
    column: $table.firstNameRu,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get lastNameRu => $composableBuilder(
    column: $table.lastNameRu,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get firstNameLatin => $composableBuilder(
    column: $table.firstNameLatin,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get lastNameLatin => $composableBuilder(
    column: $table.lastNameLatin,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get gender => $composableBuilder(
    column: $table.gender,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get birthDate => $composableBuilder(
    column: $table.birthDate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get phone => $composableBuilder(
    column: $table.phone,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get email => $composableBuilder(
    column: $table.email,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get passportNo => $composableBuilder(
    column: $table.passportNo,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get studentCardNo => $composableBuilder(
    column: $table.studentCardNo,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get universityId => $composableBuilder(
    column: $table.universityId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get faculty => $composableBuilder(
    column: $table.faculty,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get studyYear => $composableBuilder(
    column: $table.studyYear,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get programType => $composableBuilder(
    column: $table.programType,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get studyLanguage => $composableBuilder(
    column: $table.studyLanguage,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get arrivalDate => $composableBuilder(
    column: $table.arrivalDate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get homeAddress => $composableBuilder(
    column: $table.homeAddress,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get city => $composableBuilder(
    column: $table.city,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get moscowAddress => $composableBuilder(
    column: $table.moscowAddress,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get familyContact => $composableBuilder(
    column: $table.familyContact,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get photoPath => $composableBuilder(
    column: $table.photoPath,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get notes => $composableBuilder(
    column: $table.notes,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$StudentsTableAnnotationComposer
    extends Composer<_$AppDatabase, $StudentsTable> {
  $$StudentsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get firstNameDari => $composableBuilder(
    column: $table.firstNameDari,
    builder: (column) => column,
  );

  GeneratedColumn<String> get lastNameDari => $composableBuilder(
    column: $table.lastNameDari,
    builder: (column) => column,
  );

  GeneratedColumn<String> get firstNameRu => $composableBuilder(
    column: $table.firstNameRu,
    builder: (column) => column,
  );

  GeneratedColumn<String> get lastNameRu => $composableBuilder(
    column: $table.lastNameRu,
    builder: (column) => column,
  );

  GeneratedColumn<String> get firstNameLatin => $composableBuilder(
    column: $table.firstNameLatin,
    builder: (column) => column,
  );

  GeneratedColumn<String> get lastNameLatin => $composableBuilder(
    column: $table.lastNameLatin,
    builder: (column) => column,
  );

  GeneratedColumn<String> get gender =>
      $composableBuilder(column: $table.gender, builder: (column) => column);

  GeneratedColumn<DateTime> get birthDate =>
      $composableBuilder(column: $table.birthDate, builder: (column) => column);

  GeneratedColumn<String> get phone =>
      $composableBuilder(column: $table.phone, builder: (column) => column);

  GeneratedColumn<String> get email =>
      $composableBuilder(column: $table.email, builder: (column) => column);

  GeneratedColumn<String> get passportNo => $composableBuilder(
    column: $table.passportNo,
    builder: (column) => column,
  );

  GeneratedColumn<String> get studentCardNo => $composableBuilder(
    column: $table.studentCardNo,
    builder: (column) => column,
  );

  GeneratedColumn<String> get universityId => $composableBuilder(
    column: $table.universityId,
    builder: (column) => column,
  );

  GeneratedColumn<String> get faculty =>
      $composableBuilder(column: $table.faculty, builder: (column) => column);

  GeneratedColumn<int> get studyYear =>
      $composableBuilder(column: $table.studyYear, builder: (column) => column);

  GeneratedColumn<String> get programType => $composableBuilder(
    column: $table.programType,
    builder: (column) => column,
  );

  GeneratedColumn<String> get studyLanguage => $composableBuilder(
    column: $table.studyLanguage,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get arrivalDate => $composableBuilder(
    column: $table.arrivalDate,
    builder: (column) => column,
  );

  GeneratedColumn<String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  GeneratedColumn<String> get homeAddress => $composableBuilder(
    column: $table.homeAddress,
    builder: (column) => column,
  );

  GeneratedColumn<String> get city =>
      $composableBuilder(column: $table.city, builder: (column) => column);

  GeneratedColumn<String> get moscowAddress => $composableBuilder(
    column: $table.moscowAddress,
    builder: (column) => column,
  );

  GeneratedColumn<String> get familyContact => $composableBuilder(
    column: $table.familyContact,
    builder: (column) => column,
  );

  GeneratedColumn<String> get photoPath =>
      $composableBuilder(column: $table.photoPath, builder: (column) => column);

  GeneratedColumn<String> get notes =>
      $composableBuilder(column: $table.notes, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);
}

class $$StudentsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $StudentsTable,
          Student,
          $$StudentsTableFilterComposer,
          $$StudentsTableOrderingComposer,
          $$StudentsTableAnnotationComposer,
          $$StudentsTableCreateCompanionBuilder,
          $$StudentsTableUpdateCompanionBuilder,
          (Student, BaseReferences<_$AppDatabase, $StudentsTable, Student>),
          Student,
          PrefetchHooks Function()
        > {
  $$StudentsTableTableManager(_$AppDatabase db, $StudentsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$StudentsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$StudentsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$StudentsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> firstNameDari = const Value.absent(),
                Value<String> lastNameDari = const Value.absent(),
                Value<String?> firstNameRu = const Value.absent(),
                Value<String?> lastNameRu = const Value.absent(),
                Value<String?> firstNameLatin = const Value.absent(),
                Value<String?> lastNameLatin = const Value.absent(),
                Value<String> gender = const Value.absent(),
                Value<DateTime?> birthDate = const Value.absent(),
                Value<String?> phone = const Value.absent(),
                Value<String?> email = const Value.absent(),
                Value<String?> passportNo = const Value.absent(),
                Value<String?> studentCardNo = const Value.absent(),
                Value<String?> universityId = const Value.absent(),
                Value<String?> faculty = const Value.absent(),
                Value<int?> studyYear = const Value.absent(),
                Value<String> programType = const Value.absent(),
                Value<String> studyLanguage = const Value.absent(),
                Value<DateTime?> arrivalDate = const Value.absent(),
                Value<String> status = const Value.absent(),
                Value<String?> homeAddress = const Value.absent(),
                Value<String?> city = const Value.absent(),
                Value<String?> moscowAddress = const Value.absent(),
                Value<String?> familyContact = const Value.absent(),
                Value<String?> photoPath = const Value.absent(),
                Value<String?> notes = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
              }) => StudentsCompanion(
                id: id,
                firstNameDari: firstNameDari,
                lastNameDari: lastNameDari,
                firstNameRu: firstNameRu,
                lastNameRu: lastNameRu,
                firstNameLatin: firstNameLatin,
                lastNameLatin: lastNameLatin,
                gender: gender,
                birthDate: birthDate,
                phone: phone,
                email: email,
                passportNo: passportNo,
                studentCardNo: studentCardNo,
                universityId: universityId,
                faculty: faculty,
                studyYear: studyYear,
                programType: programType,
                studyLanguage: studyLanguage,
                arrivalDate: arrivalDate,
                status: status,
                homeAddress: homeAddress,
                city: city,
                moscowAddress: moscowAddress,
                familyContact: familyContact,
                photoPath: photoPath,
                notes: notes,
                createdAt: createdAt,
                updatedAt: updatedAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String firstNameDari,
                required String lastNameDari,
                Value<String?> firstNameRu = const Value.absent(),
                Value<String?> lastNameRu = const Value.absent(),
                Value<String?> firstNameLatin = const Value.absent(),
                Value<String?> lastNameLatin = const Value.absent(),
                required String gender,
                Value<DateTime?> birthDate = const Value.absent(),
                Value<String?> phone = const Value.absent(),
                Value<String?> email = const Value.absent(),
                Value<String?> passportNo = const Value.absent(),
                Value<String?> studentCardNo = const Value.absent(),
                Value<String?> universityId = const Value.absent(),
                Value<String?> faculty = const Value.absent(),
                Value<int?> studyYear = const Value.absent(),
                required String programType,
                required String studyLanguage,
                Value<DateTime?> arrivalDate = const Value.absent(),
                required String status,
                Value<String?> homeAddress = const Value.absent(),
                Value<String?> city = const Value.absent(),
                Value<String?> moscowAddress = const Value.absent(),
                Value<String?> familyContact = const Value.absent(),
                Value<String?> photoPath = const Value.absent(),
                Value<String?> notes = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
              }) => StudentsCompanion.insert(
                id: id,
                firstNameDari: firstNameDari,
                lastNameDari: lastNameDari,
                firstNameRu: firstNameRu,
                lastNameRu: lastNameRu,
                firstNameLatin: firstNameLatin,
                lastNameLatin: lastNameLatin,
                gender: gender,
                birthDate: birthDate,
                phone: phone,
                email: email,
                passportNo: passportNo,
                studentCardNo: studentCardNo,
                universityId: universityId,
                faculty: faculty,
                studyYear: studyYear,
                programType: programType,
                studyLanguage: studyLanguage,
                arrivalDate: arrivalDate,
                status: status,
                homeAddress: homeAddress,
                city: city,
                moscowAddress: moscowAddress,
                familyContact: familyContact,
                photoPath: photoPath,
                notes: notes,
                createdAt: createdAt,
                updatedAt: updatedAt,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$StudentsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $StudentsTable,
      Student,
      $$StudentsTableFilterComposer,
      $$StudentsTableOrderingComposer,
      $$StudentsTableAnnotationComposer,
      $$StudentsTableCreateCompanionBuilder,
      $$StudentsTableUpdateCompanionBuilder,
      (Student, BaseReferences<_$AppDatabase, $StudentsTable, Student>),
      Student,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$StudentsTableTableManager get students =>
      $$StudentsTableTableManager(_db, _db.students);
}
