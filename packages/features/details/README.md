# Details Feature

The `details` package implements the product details screen, providing in-depth information about a specific items in the eStore.

## Responsibility

This package is responsible for:

- **UI**: The product details screen, image galleries, and product descriptions.
- **State Management**: Handling the state for the specific product being viewed.
- **Navigation**: Providing routes for the details screen.

## Structure

```text
lib/
├── src/
│   ├── screen/      # Details screen UI components
│   └── viewmodel/   # Business logic for product details
└── details.dart     # Entry point and routes
```

## Dependencies

- `core`: For shared models and networking.
- `flutter_riverpod`
- `auto_route`
