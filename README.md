# eStore

A modern Flutter e-commerce application built with a modular, multi-package architecture.

## Project Structure

This project follows a layer-based modular architecture to ensure scalability and maintainability.

- **`lib/`**: The main entry point of the application.
- **`packages/core/`**: Shared logic, networking, and data models used across all features.
- **`packages/features/`**: Individual feature modules (e.g., `home`, `details`).

## Getting Started

### Prerequisites

- Flutter SDK (^3.10.7)
- Dart SDK

### Setup

1. Clone the repository.
2. Run the following command at the root to fetch dependencies for all packages:

    ```bash
    flutter pub get
    ```

    (Or use the provided `generate_code.bat` if on Windows).

3. Generate code for all packages using `build_runner`:

    ```bash
    ./generate_code.bat
    ```

4. Run the application:

    ```bash
    flutter run
    ```

## Architecture

The project uses:

- **Riverpod**: For state management and dependency injection.
- **AutoRoute**: For navigation and deep linking.
- **Dio**: For networking.
- **JsonSerializable**: For automated JSON parsing.

---

For more details on specific components, see the README files in the `packages/` directory.
