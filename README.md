# AllyCare Flutter Scaffold

A Flutter project scaffold for a healthcare application with Firebase integration, clean architecture, and Riverpod state management.

## Table of Contents
- [Overview](#overview)
- [Features](#features)
- [Folder Structure](#folder-structure)
- [Architecture Decisions](#architecture-decisions)
- [State Management](#state-management)
- [Setup Instructions](#setup-instructions)
- [Challenges Faced](#challenges-faced)
- [Next Steps](#next-steps)
- [Contributing](#contributing)
- [License](#license)

## Overview
AllyCare is a Flutter-based healthcare application scaffold designed to streamline development with a modular, scalable architecture. It integrates Firebase for authentication and data storage, uses Riverpod for state management, and follows clean architecture principles to ensure maintainability and testability.

## Features
- **Firebase Integration**: Authentication and Firestore for user management and data persistence.
- **Clean Architecture**: Separates concerns into `data`, `domain`, and `presentation` layers.
- **Riverpod State Management**: Predictable and scalable state management for UI and business logic.
- **Pagination**: Assessment list with shimmer placeholders for smooth loading.
- **Favorites**: Local storage of favorite assessments using `SharedPreferences`.
- **Appointment Booking**: Skeleton for booking appointments stored in Firestore.
- **Hero Animations**: Smooth transitions in the assessment detail screen.
- **Modular UI**: Reusable widgets for buttons, headers, and placeholders.

## Folder Structure
```
lib/
├── core/                           # Core utilities and app-wide configurations
│   ├── app.dart                    # App initialization and setup
│   ├── constants.dart              # App-wide constants
│   ├── exceptions.dart             # Custom exceptions
│   ├── theme.dart                  # App theme and styling
│   └── utils.dart                  # Utility functions
├── data/                           # Data layer for local/remote data sources
│   ├── datasources/                # Local and remote data sources
│   │   ├── local/
│   │   │   └── favorites_local.dart
│   │   └── remote/
│   │       ├── appointment_remote.dart
│   │       ├── assessment_remote.dart
│   │       └── auth_remote.dart
│   ├── models/                     # Data models for serialization
│   │   ├── appointment_model.dart
│   │   └── assessment_model.dart
│   └── repositories_impl/          # Repository implementations
│       ├── appointment_repository_impl.dart
│       ├── assessment_repository_impl.dart
│       └── auth_repository_impl.dart
├── domain/                         # Business logic and entities
│   ├── entities/                   # Business entities
│   │   ├── appointment.dart
│   │   ├── assessment.dart
│   │   └── user.dart
│   ├── repositories/               # Abstract repository interfaces
│   │   ├── appointment_repository.dart
│   │   ├── assessment_repository.dart
│   │   └── auth_repository.dart
│   └── usecases/                   # Use cases for business logic
│       ├── book_appointment.dart
│       ├── fetch_assessments.dart
│       ├── signup_user.dart
│       └── toggle_favorite.dart
├── firebase_options.dart           # Firebase configuration
├── main.dart                       # App entry point
└── presentation/                   # UI layer
    ├── appointment/                # Appointment-related screens and controllers
    │   ├── appointment_controller.dart
    │   └── appointment_list.dart
    ├── assessment/                 # Assessment-related screens and controllers
    │   ├── assessment_controller.dart
    │   ├── assessment_detail.dart
    │   ├── assessment_list.dart
    │   └── assessment_tile.dart
    ├── auth/                       # Authentication screens and controllers
    │   ├── auth_controller.dart
    │   ├── auth_state.dart
    │   ├── login_screen.dart
    │   └── signup_screen.dart
    ├── home/                       # Home shell for navigation
    │   └── home_shell.dart
    ├── shared_widgets/             # Reusable UI components
    │   ├── custom_button.dart
    │   ├── section_header.dart
    │   └── shimmer_placeholder.dart
    └── splash/                     # Splash screen
        └── splash_screen.dart
```

## Architecture Decisions
- **Clean Architecture**: Adopted to separate concerns into `data`, `domain`, and `presentation` layers, ensuring scalability and testability. This isolates business logic from UI and data sources, making it easier to swap implementations (e.g., Firestore to another backend).
- **Repository Pattern**: Used to abstract data sources, allowing seamless integration of local (`SharedPreferences`) and remote (Firestore) data.
- **Use Cases**: Encapsulate business logic for specific features (e.g., `book_appointment`, `fetch_assessments`), improving modularity and reusability.
- **Firebase Integration**: Chosen for its robust authentication and Firestore capabilities, with stubs for easy extension to real-world use cases.

## State Management
**Riverpod** was selected for its simplicity, type safety, and flexibility compared to other state management solutions:
- **ProviderScope**: Manages app-wide state, enabling dependency injection.
- **Notifiers**: Used in controllers (e.g., `assessment_controller.dart`, `auth_controller.dart`) for reactive state updates.
- **Why Riverpod?**:
  - Eliminates boilerplate compared to Provider.
  - Supports immutable state and async operations seamlessly.
  - Easy to test and maintain, with clear dependency management.
- **Challenges**: Initial setup required careful configuration to avoid provider lifecycle issues, especially for async data fetching.

## Setup Instructions
1. **Create a Firebase Project**:
   - Set up a Firebase project in the [Firebase Console](https://console.firebase.google.com/).
   - Add Android/iOS apps to the project.
   - Download `google-services.json` (Android) and `GoogleService-Info.plist` (iOS), or generate `firebase_options.dart`.

2. **Install Dependencies**:
   ```bash
   flutter pub get
   ```

3. **Run the App**:
   ```bash
   flutter run
   ```

4. **Firebase Configuration**:
   - Place `google-services.json` in `android/app/` and `GoogleService-Info.plist` in `ios/Runner/`, or ensure `firebase_options.dart` is correctly configured.
   - Enable Firebase Authentication and Firestore in the Firebase Console.

## Challenges Faced
- **Role-Based Security**: Implementing role-based access control in Firebase was complex due to the need for custom claims and security rules. This required careful planning to ensure scalability and security without compromising performance.
- **Riverpod Learning Curve**: Structuring providers for async operations and ensuring proper disposal was initially challenging, especially for pagination and real-time Firestore updates.
- **Pagination**: Integrating pagination with Firestore queries and shimmer placeholders required careful handling of state to avoid UI jank.
- **Firebase Stubs**: Creating flexible stubs for Firebase Auth and Firestore that could be extended for real-world use cases without breaking the app was non-trivial.

## Next Steps
- **Auth Integration**: Replace the demo `userId` in the appointment booking feature with the real authenticated user ID from Firebase Auth.
- **Firestore Configuration**: Add real Firestore fields, indices, and security rules to support production use cases.
- **UI Styling**: Align widgets with Figma design tokens (fonts, colors, spacing) for a polished look.
- **Testing**: Add unit tests for use cases and integration tests for UI flows.
- **Performance Optimization**: Optimize Firestore queries and pagination for large datasets.



