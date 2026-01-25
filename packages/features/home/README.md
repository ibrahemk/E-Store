# Home Feature

The `home` package implements the landing screen of the eStore application, displaying categories and featured products.

## Responsibility

This package is responsible for:

- **UI**: The home screen layout, category list, and product cards.
- **State Management**: Fetching and displaying home-specific data using Riverpod.
- **Navigation**: Providing routes for the home screen and navigating to product details.

## Structure

```text
lib/
├── src/
│   ├── model/       # Data models specific to the home feature
│   ├── repository/  # Data fetching logic for the home screen
│   ├── screen/      # Home screen UI components
│   └── viewmodel/   # Business logic and state management for home
└── home.dart        # Entry point and routes
```

## Dependencies

- `core`: For shared models and networking.
- `details`: For navigating to the product details screen.
- `flutter_riverpod`
- `auto_route`
