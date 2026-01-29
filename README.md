# 🛍️ eStore

A modern, feature-rich Flutter e-commerce application built with clean architecture and modular design principles.

## ✨ Features

- 🏠 **Home Screen**: Browse products with a beautiful, responsive UI
- 🔍 **Product Details**: View detailed product information
- 🛒 **Shopping Cart**: Add, remove, and manage cart items
- 📱 **Responsive Design**: Optimized for both Android and iOS
- 🎨 **Modern UI**: Clean and intuitive user interface
- 💾 **Local Database**: Persistent data storage using Drift

## 🏗️ Architecture

This project follows a **modular, multi-package architecture** to ensure scalability, maintainability, and clear separation of concerns.

### Project Structure

```
estore/
├── lib/                          # Main application entry point
├── packages/
│   ├── core/                     # Shared core functionality
│   │   ├── networking/           # API clients and services
│   │   ├── models/               # Data models
│   │   ├── database/             # Local database (Drift)
│   │   └── utils/                # Shared utilities
│   └── features/                 # Feature modules
│       ├── home/                 # Home screen feature
│       ├── details/              # Product details feature
│       └── cart/                 # Shopping cart feature
└── assets/                       # Images and resources
```

### Tech Stack

| Category | Technology |
|----------|-----------|
| **Framework** | Flutter SDK ^3.10.7 |
| **State Management** | Riverpod 2.6.1 |
| **Navigation** | AutoRoute 9.2.2 |
| **Networking** | Dio 5.7.0 |
| **Local Database** | Drift 2.20.0 |
| **JSON Serialization** | json_serializable 6.7.1 |
| **Code Generation** | build_runner 2.4.12 |

## 🚀 Getting Started

### Prerequisites

Before you begin, ensure you have the following installed:

- **Flutter SDK**: Version 3.10.7 or higher
- **Dart SDK**: Included with Flutter
- **Android Studio** or **VS Code** with Flutter extensions
- **Git**: For version control

### Installation

1. **Clone the repository**

   ```bash
   git clone https://github.com/yourusername/estore.git
   cd estore
   ```

2. **Install dependencies**

   Run the following command at the root to fetch dependencies for all packages:

   ```bash
   flutter pub get
   ```

3. **Generate code**

   Generate code for routing, state management, and JSON serialization:

   ```bash
   # On Windows
   generate_code.bat

   # On macOS/Linux
   flutter pub run build_runner build --delete-conflicting-outputs
   ```

4. **Run the application**

   ```bash
   flutter run
   ```

   Or use your IDE's run configuration.

## 📦 Package Details

### Core Package

The `core` package contains shared functionality used across all feature modules:

- **Networking**: HTTP client setup with Dio
- **Models**: Shared data models and DTOs
- **Database**: Drift database for local persistence
- **Routing**: AutoRoute configuration
- **Utilities**: Common helper functions and extensions

### Feature Packages

Each feature is isolated in its own package:

- **home**: Product listing and browsing
- **details**: Product detail view
- **cart**: Shopping cart management

## 🔧 Development

### Code Generation

This project uses code generation for several purposes. Run the following command whenever you modify:

- AutoRoute routes
- Riverpod providers
- JSON serializable models
- Drift database tables

```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

For continuous generation during development:

```bash
flutter pub run build_runner watch --delete-conflicting-outputs
```

### Adding a New Feature

1. Create a new package in `packages/features/`
2. Add the package to the main `pubspec.yaml`
3. Implement your feature following the existing structure
4. Update routing in the core package if needed

## 🎨 App Icon

The app uses custom launcher icons configured via `flutter_launcher_icons`:

- **Icon Path**: `assets/images/app_icon.png`
- **Adaptive Icon**: Configured for Android with foreground and background

To regenerate icons after changing the image:

```bash
flutter pub run flutter_launcher_icons
```

## 📱 Supported Platforms

- ✅ Android
- ✅ iOS
- 🚧 Web (not tested)
- 🚧 Desktop (not tested)

## 🧪 Testing

```bash
# Run all tests
flutter test

# Run tests with coverage
flutter test --coverage
```

## 📄 License

This project is private and not published to pub.dev.

## 👨‍💻 Contributing

This is a private project. For contribution guidelines, please contact the project maintainer.

---

**Built with ❤️ using Flutter**
