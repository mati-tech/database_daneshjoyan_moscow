import 'dart:io';
import 'package:flutter/material.dart';
import '../services/photo_service.dart';

class StudentAvatar extends StatelessWidget {
  final String? photoFileName;
  final double radius;
  const StudentAvatar({
    super.key,
    required this.photoFileName,
    this.radius = 22,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<File?>(
      future: PhotoService.getPhotoFile(photoFileName),
      builder: (context, snap) {
        final f = snap.data;
        if (f == null) {
          return CircleAvatar(
            radius: radius,
            backgroundColor: const Color(0xFFE3EBEF),
            child: Icon(Icons.person,
                size: radius, color: const Color(0xFF6C808B)),
          );
        }
        return CircleAvatar(
          radius: radius,
          backgroundImage: FileImage(f),
        );
      },
    );
  }
}