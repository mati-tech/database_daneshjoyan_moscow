import 'package:drift/drift.dart';

class Students extends Table {
  IntColumn get id => integer().autoIncrement()();

  // Names in three scripts
  TextColumn get firstNameDari => text().withLength(min: 1, max: 100)();
  TextColumn get lastNameDari => text().withLength(min: 1, max: 100)();
  TextColumn get firstNameRu => text().nullable()();
  TextColumn get lastNameRu => text().nullable()();
  TextColumn get firstNameLatin => text().nullable()();
  TextColumn get lastNameLatin => text().nullable()();

  // Personal
  TextColumn get gender => text()(); // male / female
  DateTimeColumn get birthDate => dateTime().nullable()();
  TextColumn get phone => text().nullable()();
  TextColumn get email => text().nullable()();

  // Identity
  TextColumn get passportNo => text().nullable()();
  TextColumn get studentCardNo => text().nullable()();
  TextColumn get universityId => text().nullable()();

  // Academic
  TextColumn get faculty => text().nullable()();
  IntColumn get studyYear => integer().nullable()();
  TextColumn get programType => text()(); // bachelor / master / doc
  TextColumn get studyLanguage => text()(); // en / ru
  DateTimeColumn get arrivalDate => dateTime().nullable()();
  TextColumn get status => text()(); // active / graduated / suspended / left

  // Address & contacts
  TextColumn get homeAddress => text().nullable()();
  TextColumn get city => text().nullable()();
  TextColumn get moscowAddress => text().nullable()();
  TextColumn get familyContact => text().nullable()();

  // Media & notes
  TextColumn get photoPath => text().nullable()();
  TextColumn get notes => text().nullable()();

  // Timestamps
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
  DateTimeColumn get updatedAt => dateTime().withDefault(currentDateAndTime)();
}