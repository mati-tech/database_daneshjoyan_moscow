# Anjoman DB - Student Management System

A robust, offline-first desktop application built with Flutter for managing student records. Designed specifically for Windows, this app requires no internet connection and features automatic local backups to ensure data safety.

## ✨ Features

- **100% Offline Capable:** All data is stored locally using SQLite. No cloud or internet connection required.
- **Multi-Language Support:** Dedicated fields for Dari (Persian), Russian, and Latin names.
- **Photo Management:** Upload, change, and remove student photos. Images are stored locally alongside the database.
- **Automatic Backups:** Generates a daily backup of the database and all student photos. Backups can be pointed to an external drive for safe keeping.
- **Professional UI:** Clean, modern, and responsive interface with custom Persian/Russian typography (Vazirmatn & Noto Sans).
- **Organization Branding:** Customizable organization name and logo displayed on the home screen.
- **Smart Search:** Quickly find students by name, phone, email, or passport number.

## 🛠 Tech Stack

- **Framework:** [Flutter](https://flutter.dev/) (Windows Desktop)
- **Database:** [Drift](https://drift.simonbinder.eu/) (Type-safe SQLite wrapper for Dart)
- **State Management:** Native Flutter `StreamBuilder` & `StatefulWidget`
- **Styling:** Material 3
- **Local Storage:** `shared_preferences` (for settings), `path_provider` (for file paths)

## 🚀 Getting Started

### Prerequisites

1. Install [Flutter](https://docs.flutter.dev/get-started/install/windows) (Stable channel).
2. Ensure you have Visual Studio installed with the **"Desktop development with C++"** workload.
3. Enable Windows desktop support in Flutter:
   ```bash
   flutter config --enable-windows-desktop