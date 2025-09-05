# 📝 Notes App

A modern **Notes App** built with **Flutter**, using **Bloc for state management** and **Sqflite for local database storage**.  
This app allows you to create, update, delete, and toggle notes — all saved offline on your device.

---

## ✨ Features

- ➕ Add new notes with title & content  
- ✏️ Edit existing notes  
- 🗑️ Delete notes  
- ✅ Mark notes as done/undone (toggle)  
- 💾 Persistent offline storage with **Sqflite**  
- ⚡ Reactive UI powered by **Bloc**  
- 🎨 Clean Material Design interface  

---

## 🛠️ Built With

- [Flutter](https://flutter.dev/) – Cross-platform UI toolkit  
- [Bloc](https://bloclibrary.dev/#/) – State Management  
- [Sqflite](https://pub.dev/packages/sqflite) – Local Database  
- [Path Provider](https://pub.dev/packages/path_provider) – DB Path Helper  

---

## 📂 Project Structure

```
lib/
│
├── main.dart
│
├── data/
│   ├── models/
│   │   └── note_model.dart
│   ├── db/
│   │   └── notes_database.dart
│
├── logic/
│   ├── bloc/
│   │   ├── notes_bloc.dart
│   │   ├── notes_event.dart
│   │   └── notes_state.dart
│
└── presentation/
    ├── pages/
    │   ├── home_page.dart
    │   ├── add_note_view.dart
    │   └── edit_note_view.dart
    └── widgets/
        └── note_item.dart
```

---

## 🚀 Getting Started

### 🔹 Prerequisites
- Install [Flutter SDK](https://flutter.dev/docs/get-started/install)  
- Set up an emulator or connect a real device  

### 🔹 Installation
```bash
# Clone this repository
git clone https://github.com/your-username/notes_app.git

# Navigate to project folder
cd notes_app

# Install dependencies
flutter pub get

# Run the app
flutter run
```

---


## 🤝 Contributing

Contributions are welcome!

1. Fork the repository
2. Create a feature branch

   ```bash
   git checkout -b feature/my-feature
   ```
3. Commit your changes

   ```bash
   git commit -m "Add my feature"
   ```
4. Push to your fork

   ```bash
   git push origin feature/my-feature
   ```
5. Open a Pull Request

---
