import 'dart:io';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OrgSettingsService {
  static const _nameKey = 'org_name';
  static const _logoKey = 'org_logo_filename';

  static Future<String> getOrgName() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_nameKey) ?? 'Organization Name';
  }

  static Future<void> setOrgName(String name) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_nameKey, name);
  }

  static Future<File?> getLogoFile() async {
    final prefs = await SharedPreferences.getInstance();
    final name = prefs.getString(_logoKey);
    if (name == null) return null;
    final docs = await getApplicationDocumentsDirectory();
    final f = File(p.join(docs.path, 'org', name));
    return await f.exists() ? f : null;
  }

  static Future<File> saveLogo(File source) async {
    final docs = await getApplicationDocumentsDirectory();
    final dir = Directory(p.join(docs.path, 'org'));
    if (!await dir.exists()) await dir.create(recursive: true);

    // delete old logo
    final prefs = await SharedPreferences.getInstance();
    final old = prefs.getString(_logoKey);
    if (old != null) {
      final oldFile = File(p.join(dir.path, old));
      if (await oldFile.exists()) await oldFile.delete();
    }

    final ext = p.extension(source.path).toLowerCase();
    final name = 'logo_${DateTime.now().millisecondsSinceEpoch}$ext';
    final dest = File(p.join(dir.path, name));
    await source.copy(dest.path);
    await prefs.setString(_logoKey, name);
    return dest;
  }
}