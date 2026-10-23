import 'package:flutter/material.dart';
import 'package:window_manager/window_manager.dart';
import 'app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await windowManager.ensureInitialized();

  // Set your desired minimum size
  const minWindowSize = Size(1000, 700);

  WindowOptions windowOptions = const WindowOptions(
    size: Size(1200, 800), // Default starting size
    center: true,
    title: 'Anjoman DB',
  );

  windowManager.waitUntilReadyToShow(windowOptions, () async {
    await windowManager.show();
    await windowManager.focus();

    // ⚡ THIS IS THE KEY: Lock the minimum size
    await windowManager.setMinimumSize(minWindowSize);
  });

  runApp(const StudentManagerApp());
}