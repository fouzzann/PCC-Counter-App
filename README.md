# Flutter Counter Application

A modern Flutter application built with GetX state management using MVVM architecture. This app demonstrates a simple counter that can be incremented or decremented, with a warning message when attempting to go below zero.

## Features

- Increment and decrement counter functionality
- Warning message when counter reaches zero
- Clean MVVM architecture
- Modern UI design with custom theme
- State management using GetX.

## Project Structure

```
lib/
├── main.dart                    # Application entry point
├── model/
│   └── counter_model.dart       # Data model for counter
├── utils/
│   └── app_theme.dart           # Theme configuration and colors
├── view/
│   ├── counter_page.dart        # Main counter page
│   └── widgets/
│       ├── counter_display.dart # Widget to display counter value
│       ├── counter_buttons.dart # Increment/decrement buttons
│       └── warning_message.dart # Warning message widget
└── viewmodel/
    └── counter_controller.dart  # Business logic controller
```

## Setup

### Prerequisites

- Flutter SDK (2.0.0 or higher)
- Dart SDK (2.12.0 or higher)
- Android Studio / VS Code / IntelliJ IDEA

### Installation

1. Clone this repository:
```bash
git clone https://github.com/yourusername/counter_application.git
```

2. Navigate to the project directory:
```bash
cd counter_application
```

3. Install dependencies:
```bash
flutter pub get
```

4. Run the app:
```bash
flutter run
```

## Dependencies

- [GetX](https://pub.dev/packages/get): For state management, dependency injection, and route management

## Architecture

This project follows the MVVM (Model-View-ViewModel) architecture:

- **Model**: Represents the data structure (CounterModel)
- **View**: UI components (counter_page.dart and widgets)
- **ViewModel**: Business logic (CounterController)

## Troubleshooting

If you encounter build issues with Android:

1. Clean your project:
```bash
flutter clean
```

2. If you see Gradle errors related to file paths, check that files in the Android directory are not corrupted or inaccessible, particularly:
```
android/app/src/main/res/drawable/launch_background.xml
```

3. For Gradle task execution errors:
- Update Gradle version in `android/gradle/wrapper/gradle-wrapper.properties`
- Disable state tracking for problematic tasks in `android/app/build.gradle`

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is licensed under the MIT License - see the LICENSE file for details.

