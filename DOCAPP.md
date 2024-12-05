# App clone hi very one.

# flutter pub add flutter_native_splash 
flutter pub add flutter_native_splash is the command used in Flutter to add flutter_native_splash package to your project.
The flutter_native_splash package is used to automatically create native splash screens on both Android and iOS platforms, giving your app a more professional look when it starts up.

How commands work
flutter pub add: This command adds a package to the Flutter project's pubspec.yaml file.
flutter_native_splash: This is the name of the package you want to add.
After running the command, Flutter will:

Add the package to the dependencies section in the pubspec.yaml file.
Automatically download this package.
Purpose of package flutter_native_splash
Automatically configure splash screen:
This package creates separate splash screens for Android (via AndroidManifest.xml, res/drawable) and iOS (via LaunchScreen.storyboard).
Customize the Splash Screen interface:
You can easily change the logo, background color, or splash screen display style.
Instructions for using flutter_native_splash

Add package: Run command:
# flutter pub add flutter_native_splash
Configuration in pubspec.yaml: Add configuration for splash screen to pubspec.yaml file:
flutter_native_splash:
  color: "#FFFFFF" # Background color
  image: assets/splash.png # Path to logo image
  android: true # Enable splash for Android
  ios: true # Enable splash for iOS

Run command to create splash screen: After configuration is complete, run the following command to apply:
# flutter pub run flutter_native_splash:create