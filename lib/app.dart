import 'package:flutter/material.dart';
import 'database/app_database.dart';
import 'services/backup_service.dart';
import 'screens/home_screen.dart';
import 'theme/app_theme.dart';

class StudentManagerApp extends StatefulWidget {
  const StudentManagerApp({super.key});

  @override
  State<StudentManagerApp> createState() => _StudentManagerAppState();
}

class _StudentManagerAppState extends State<StudentManagerApp> {
  late final AppDatabase _db;

  @override
  void initState() {
    super.initState();
    _db = AppDatabase();
    // Fire-and-forget daily backup check
    BackupService(_db).checkAndBackup().catchError((e) {
      debugPrint('Backup check failed: $e');
    });
  }

  @override
  void dispose() {
    _db.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Student Manager',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light(),
      home: HomeScreen(db: _db),
    );
  }
}