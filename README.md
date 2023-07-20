# Firebase Template
[![style: very good analysis][very_good_analysis_badge]][very_good_analysis_link]
[![License: MIT][license_badge]][license_link]

This template provides a solid foundation for building feature-rich Flutter applications integrated with Firebase. It follows Domain-driven Design principles for maintainable code, uses auto_route for declarative routing, and BLoC for efficient state management. The template includes a complete authentication system with features such as login, registration, email verification, password reset, and user profile management. User data is stored in Firestore, and avatars are uploaded to Firebase Cloud Storage. Additionally, there's a classic counter feature, with its value stored in Firestore, available after login.

## Features :sparkles:

- **Domain-driven Design**: Organized project structure for better scalability and separation of concerns.
- **auto_route**: Declarative and type-safe routing for easy navigation through screens.
- **BLoC**: Robust state management for clean separation of UI and business logic.
- **Authentication System**: Fully functional email-based authentication with additional features like email verification and password reset.
- **Firestore Integration**: Store user data in Firestore for real-time data synchronization across devices.
- **Firebase Cloud Storage**: Upload and manage user avatars securely using Firebase Cloud Storage.
- **Classic Counter**: A simple counter example demonstrating Firestore integration.
- **Cached Network Image**: Use "cached_network_image" package for caching images from network.
With this feature, images fetched from the network will be cached locally, reducing the number of requests and improving performance.
- **Working with Assets**: Utilize `flutter_gen_runner` for easy and type-safe access to your project's assets. [Learn more](https://pub.dev/packages/flutter_gen_runner)
- **Localization (l10n)**: Easily localize your app flutter_localizations [Learn more](https://github.com/xJac0b/firebase_template/tree/master#working-with-translations-)

## Getting Started 🚀

To create a new project using this template, follow these steps:

1. **Clone the repository**.

2. **Set up Firebase:**

	Follow the [Firebase Flutter Setup Guide](https://firebase.google.com/docs/flutter/setup?platform=ios) to add Firebase to your Flutter project. This guide will walk you through the steps to 	configure Firebase for both Android and iOS platforms.

3. **Install Dependencies**
	Run the following command to get the required dependencies:
	
	```sh
	$ flutter pub get
	```

4. **Run the app**

	This project contains 3 flavors:
	
	- development
	- staging
	- production
	
	To run the desired flavor either use the launch configuration in VSCode/Android Studio or use the following commands:
	
	```sh
	# Development
	$ flutter run --flavor development --target lib/main_development.dart
	
	# Staging
	$ flutter run --flavor staging --target lib/main_staging.dart
	
	# Production
	$ flutter run --flavor production --target lib/main_production.dart
	```
	---

## Working with Translations 🌐

This project relies on [flutter_localizations][flutter_localizations_link] and follows the [official internationalization guide for Flutter][internationalization_link].

### Adding Strings

1. To add a new localizable string, open the `app_en.arb` file at `lib/l10n/arb/app_en.arb`.

```arb
{
    "@@locale": "en",
    "counterAppBarTitle": "Counter",
    "@counterAppBarTitle": {
        "description": "Text shown in the AppBar of the Counter Page"
    }
}
```

2. Then add a new key/value and description

```arb
{
    "@@locale": "en",
    "counterAppBarTitle": "Counter",
    "@counterAppBarTitle": {
        "description": "Text shown in the AppBar of the Counter Page"
    },
    "helloWorld": "Hello World",
    "@helloWorld": {
        "description": "Hello World Text"
    }
}
```

3. Use the new string

```dart
import 'package:firebase_template/l10n/l10n.dart';

@override
Widget build(BuildContext context) {
  final l10n = context.l10n;
  return Text(l10n.helloWorld);
}
```

### Adding Supported Locales

Update the `CFBundleLocalizations` array in the `Info.plist` at `ios/Runner/Info.plist` to include the new locale.

```xml
    ...

    <key>CFBundleLocalizations</key>
	<array>
		<string>en</string>
		<string>es</string>
	</array>

    ...
```

### Adding Translations

1. For each supported locale, add a new ARB file in `lib/l10n/arb`.

```
├── l10n
│   ├── arb
│   │   ├── app_en.arb
│   │   └── app_es.arb
```

2. Add the translated strings to each `.arb` file:

`app_en.arb`

```arb
{
    "@@locale": "en",
    "counterAppBarTitle": "Counter",
    "@counterAppBarTitle": {
        "description": "Text shown in the AppBar of the Counter Page"
    }
}
```

`app_es.arb`

```arb
{
    "@@locale": "es",
    "counterAppBarTitle": "Contador",
    "@counterAppBarTitle": {
        "description": "Texto mostrado en la AppBar de la página del contador"
    }
}
```

## Contribution :busts_in_silhouette:
Contributions are welcome! If you encounter any bugs or have ideas for improvements, feel free to open an issue or submit a pull request.

## License :page_facing_up:
This project is licensed under the MIT License.

[coverage_badge]: coverage_badge.svg
[flutter_localizations_link]: https://api.flutter.dev/flutter/flutter_localizations/flutter_localizations-library.html
[internationalization_link]: https://flutter.dev/docs/development/accessibility-and-localization/internationalization
[license_badge]: https://img.shields.io/badge/license-MIT-blue.svg
[license_link]: https://opensource.org/licenses/MIT
[very_good_analysis_badge]: https://img.shields.io/badge/style-very_good_analysis-B22C89.svg
[very_good_analysis_link]: https://pub.dev/packages/very_good_analysis
[very_good_cli_link]: https://github.com/VeryGoodOpenSource/very_good_cli
