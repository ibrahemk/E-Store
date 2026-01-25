# Core Package

The `core` package contains shared functionality, utilities, and data models used across all feature modules in the eStore application.

## Responsibility

This package is responsible for:

- **Networking**: Shared Dio instances and API service configurations.
- **Models**: Common data structures (DTOs) and domain models (e.g., `Product`, `Category`).
- **Base ViewModels**: Base classes for state management using Riverpod.
- **Utilities**: Common helper functions and extension methods.

## Structure

```text
lib/
├── src/
│   ├── model/      # Shared data models and DTOs
│   ├── network/    # Shared API client and networking logic
│   └── provider/   # Shared providers (if any)
└── core.dart       # Export file
```

## Usage

This package is a dependency for all feature packages. It should contain only shared, feature-agnostic code.

## Dependencies

- `flutter_riverpod`
- `dio`
- `json_annotation`
- `auto_route`
