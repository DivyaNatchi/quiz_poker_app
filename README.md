# Quiz Poker - Flutter Basics

## Project Description

Quiz Poker is a Flutter application designed to test your knowledge in various categories. It presents questions in an engaging format, allowing users to answer with hints and a limited number of attempts. The application supports adding new questions, providing a customizable quiz experience.

## Features

- **Question Answering:** Users can answer questions from different categories.
- **Hints:** Each question provides hints to guide users towards the correct answer.
- **Limited Attempts:** Users have a limited number of attempts to answer each question correctly.
- **Adaptive Layout:** The app adapts to different screen sizes, providing a consistent experience on both mobile and larger screens.
- **Add New Questions:** The app includes a screen to add new questions to the quiz.
- **Category Selection:** Questions are organized into categories, allowing users to focus on specific topics.
- **Difficulty Levels:** Questions are categorized by difficulty (Easy, Medium, Hard).

## Getting Started

### Prerequisites

- Flutter SDK installed on your machine.
- Android Studio or VS Code with Flutter and Dart plugins installed.

### Installation

1.  Clone the repository:

    ```sh
    git clone <repository_url>
    ```

2.  Navigate to the project directory:

    ```sh
    cd flutter_basics
    ```

3.  Install dependencies:

    ```sh
    flutter pub get
    ```

### Running the App

To run the app, use the following command:

    ```sh
    flutter run

    This will launch the app on your connected device or emulator.

### Project Structure

```
.
├── android               # Android-specific files
├── ios                   # iOS-specific files
├── lib                   # Dart source code
│   ├── data              # Contains question data
│   ├── models            # Data models (e.g., Question)
│   ├── screens           # UI screens (e.g., home, question detail, add question)
│   ├── theme.dart        # Application theme
│   ├── utils             # Utility functions and constants
│   └── widgets           # Reusable widgets
├── linux                 # Linux-specific files
├── macos                 # MacOS-specific files
├── test                  # Unit and integration tests
├── web                   # Web-specific files
├── windows               # Windows-specific files
├── .gitignore            # Specifies intentionally untracked files that Git should ignore
├── analysis_options.yaml # Configuration for Dart analyzer
├── pubspec.yaml          # Flutter project configuration file
└── README.md             # Project documentation

```

### Dependencies

The project uses the following Flutter and Dart packages:

- **Main Dependencies**

  - flutter: The SDK used to build cross-platform applications.
  - google_fonts: Allows you to use Google Fonts in your Flutter app.
  - cupertino_icons: Provides iOS-style icons.
  - fluttertoast: Displays toast messages across platforms.

- **Dev Dependencies**
  - flutter_test: Provides testing utilities for unit and widget tests.

### Contributing

Contributions are welcome! Please feel free to submit pull requests.
