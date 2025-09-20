# AllyCare Flutter Scaffold

## Quick start
1. Create a Firebase project and configure Android/iOS apps.
2. Add `google-services.json` and `GoogleService-Info.plist` or generate `firebase_options.dart`.
3. `flutter pub get`
4. `flutter run`

## What this scaffold includes
- Clean architecture: `data/`, `domain/`, `presentation/`
- Riverpod state management
- Firebase Auth & Firestore wiring (stubs)
- Pagination-ready assessment list and shimmer placeholders
- Hero image in assessment detail
- Favorites stored via `SharedPreferences`
- Appointment booking skeleton using Firestore

## Next steps
- Replace demo `userId` in booking with real authenticated user ID.
- Add real Firestore fields/indices and security rules.
- Style widgets precisely to Figma tokens (fonts/colors/spacing).
- Add unit tests and integration tests.
