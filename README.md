# AllyCare Flutter Scaffold

A Flutter-based mobile application scaffold for a healthcare platform, integrating Firebase for authentication and data storage, with a clean architecture and Riverpod for state management.

## Table of Contents
- [Overview](#overview)
- [Features](#features)
- [Architecture](#architecture)
- [State Management](#state-management)
- [Folder Structure](#folder-structure)
- [Setup Instructions](#setup-instructions)
- [Challenges Faced](#challenges-faced)
- [Next Steps](#next-steps)
- [Contributing](#contributing)
- [License](#license)

## Overview
AllyCare is a Flutter scaffold designed to kickstart a healthcare application with a focus on clean architecture, scalability, and maintainability. It includes Firebase integration for authentication and Firestore for data persistence, Riverpod for state management, and a modular structure to support future feature additions.

## Features
- **Firebase Integration**: Authentication and Firestore stubs for user management and data storage.
- **Clean Architecture**: Separates concerns into `data`, `domain`, and `presentation` layers.
- **Riverpod State Management**: Lightweight and reactive state management for UI and business logic.
- **Pagination Support**: Assessment list with shimmer placeholders for loading states.
- **Favorites System**: Local storage of favorite assessments using `SharedPreferences`.
- **Appointment Booking**: Skeleton for booking appointments stored in Firestore.
- **Hero Animations**: Smooth transitions for assessment detail screens.
- **Responsive UI**: Modular widgets ready for precise styling to match design tokens.

## Architecture
The app follows a **clean architecture** approach to ensure separation of concerns, testability, and maintainability. The architecture is divided into three layers:

1. **Data Layer** (`lib/data/`):
   - **Datasources**: Handles data retrieval and storage.
     - `local/`: Manages local storage (e.g., `SharedPreferences` for favorites).
     - `remote/`: Interacts with Firebase services (Auth and Firestore).
   - **Models**: Defines data structures for API responses and local storage.
   - **Repositories Implementation**: Bridges data sources to the domain layer.

2. **Domain Layer** (`lib/domain/`):
   - **Entities**: Pure data models representing core business objects (e.g., `Assessment`, `Appointment`).
   - **Repositories**: Abstract interfaces defining data operations.
   - **Use Cases**: Encapsulates business logic, independent of UI or data sources.

3. **Presentation Layer** (`lib/presentation/`):
   - Contains UI components, screens, and controllers.
   - Manages user interactions and state updates via Riverpod providers.
   - Organized by feature (e.g., `assessment/`, `appointment/`, `auth/`).

This structure isolates business logic from UI and data sources, making it easier to modify or replace any layer without affecting others.

## State Management
**Riverpod** was chosen for state management due to its:
- **Simplicity**: Provider-based approach without boilerplate.
- **Reactivity**: Automatic UI updates when state changes.
- **Testability**: Easy to mock providers for unit and widget tests.
- **Flexibility**: Supports both global and scoped state management.

Each feature (e.g., `assessment`, `appointment`, `auth`) has its own controller (`*_controller.dart`) to manage state and interact with use cases. For example, `AssessmentController` handles fetching and paginating assessments, while `AuthController` manages authentication state.

## Folder Structure