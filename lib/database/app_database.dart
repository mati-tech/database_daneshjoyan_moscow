import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'tables.dart';

part 'app_database.g.dart';

@DriftDatabase(tables: [Students])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  static QueryExecutor _openConnection() {
    return driftDatabase(
      name: 'student_db',
      native: DriftNativeOptions(
        setup: (db) {
          db.execute('PRAGMA journal_mode = WAL;');
        },
      ),
    );
  }

  // ---- CRUD helpers -------------------------------------------------

  Stream<List<Student>> watchAllStudents() {
    return (select(students)
      ..orderBy([(t) => OrderingTerm.desc(t.updatedAt)]))
        .watch();
  }

  Future<Student?> getStudent(int id) {
    return (select(students)..where((t) => t.id.equals(id)))
        .getSingleOrNull();
  }

  Future<int> insertStudent(StudentsCompanion row) {
    return into(students).insert(row);
  }

  Future<bool> updateStudent(Student row) {
    return update(students).replace(row);
  }

  Future<int> deleteStudentById(int id) {
    return (delete(students)..where((t) => t.id.equals(id))).go();
  }

  // ---- Backup (DB only; photos are copied by BackupService) ---------

  Future<File> snapshotTo(String targetFolderPath, String fileName) async {
    final target = File(p.join(targetFolderPath, fileName));
    if (await target.exists()) {
      await target.delete();
    }
    final escaped = target.path.replaceAll('\\', '/');
    await customStatement("VACUUM INTO '$escaped'");
    return target;
  }

  Future<Directory> documentsDir() => getApplicationDocumentsDirectory();
}