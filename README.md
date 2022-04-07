# nitv_flutter_test

A test app for flutter developer.

## Getting Started

This is an Flutter project. To run this project, you need the Flutter Framework support. The entry point for the project
is lib/main.dart.

To run the project follow these steps:

Step 1:
Download or clone this repo by using the link below:
git@github.com:dbspoudel/nitv_flutter_test.git

Step 2:
Go to project root and execute the following command in console to get the required dependencies:
flutter pub get

Step 3:
This project uses inject library that works with code generation, execute the following command to generate files:
flutter packages pub run build_runner build --delete-conflicting-outputs

or watch command in order to keep the source code synced automatically:
flutter packages pub run build_runner watch
