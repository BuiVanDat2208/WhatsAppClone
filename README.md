# whatsapp_clone

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


<!-- App clone hi very one. -->

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

<!--  -->
# flutter pub add country_picker


<!--  -->
```json
firebase_core
firebase_auth
firebase_storage
cloud_firestore
```
How to use it: 
# 1. Adding Firebase Libraries to Your Flutter Projec
## 1. Add the Firebase to your Flutter project
  - Go to the Firebase Console.
  - Create a new Firebase project or use an existing one.
  - Add your app to the Firebase project: 
    * For Android, download the **google-services.json** file and place it in the **android/app** directory.
    * For Ios, download the **GoogleService-Info.plist** file and place it in the **ios/Runner** directory.
## 2. Install the libraries in **pubspec.yaml**
  - Add the following dependencies to your project's **pubspec.yaml** file: 
    ```json
    dependencies:
      firebase_core: ^2.16.0
      firebase_auth: ^4.8.0
      firebase_storage: ^11.2.1
      cloud_firestore: ^4.9.1
    ```
  - Make sure to replace the version numbers with the latest versions if they have been updated. Then, run:
     ```json 
      flutter pub get 
    ````
# 2. Initialize Firebase in Your Flutter App
  - Add the following to your main file (**main.dart**)
    Ex:
      ```flutter
      import 'package:flutter/material.dart';
      import 'package:firebase_core/firebase_core.dart';
      void main() async {
        WidgetsFlutterBinding.ensureInitialized();
        await Firebase.initializeApp(); // Initialize Firebase
        runApp(MyApp());
      }
      class MyApp extends StatelessWidget {
        @override
        Widget build(BuildContext context) {
          return MaterialApp(
            home: Scaffold(
              appBar: AppBar(title: Text("Firebase App")),
              body: Center(child: Text("Hello Firebase!")),
            ),
          );
        }
      }
      ```
  - Run the app to ensure Firebase is correctly initialized.

# 3. Purpose of Each Library
## 1. firebase_core
  - Purpose: Provides core functionalities required to connect your Flutter app to Firebase services. 
  - Required for: Initializing Firebase in your Flutter project. 
  `await Firebase.initializeApp(); // Must call this before using any Firebase service`
## 2. firebase_auth
  - Purpose: Handles user authentication with Firebase Authentication (email/password, Google Sign-In, Facebook, etc.).
  - Features:
    * User sign-up and login.
    * Password recovery.
    * Managing user sessions.
    `import 'package:firebase_auth/firebase_auth.dart';

    FirebaseAuth auth = FirebaseAuth.instance;

    // Sign up a new user
    Future<void> signUp() async {
      try {
        UserCredential userCredential = await auth.createUserWithEmailAndPassword(
          email: "test@example.com",
          password: "password123",
        );
        print("User created: ${userCredential.user?.email}");
      } catch (e) {
        print("Error: $e");
      }
    }

    // Sign in an existing user
    Future<void> signIn() async {
      try {
        UserCredential userCredential = await auth.signInWithEmailAndPassword(
          email: "test@example.com",
          password: "password123",
        );
        print("User signed in: ${userCredential.user?.email}");
      } catch (e) {
        print("Error: $e");
      }
    }`
## 3. Firebase_storage
  - Purpose: Enables uploading and downloading files (like images, videos, documents) to/from Firebase Storage.
  - Features:
    * Store user profile pictures or application assets.
    * Access files through download URLs.
    `import 'package:firebase_storage/firebase_storage.dart';

      FirebaseStorage storage = FirebaseStorage.instance;

      // Upload a file
      Future<void> uploadFile(String filePath) async {
        try {
          File file = File(filePath);
          await storage.ref("uploads/myfile.jpg").putFile(file);
          print("File uploaded successfully!");
        } catch (e) {
          print("Upload error: $e");
        }
      }

      // Download a file URL
      Future<void> getFileUrl() async {
        try {
          String downloadUrl = await storage.ref("uploads/myfile.jpg").getDownloadURL();
          print("File URL: $downloadUrl");
        } catch (e) {
          print("Error: $e");
        }
      }`
## 4. cloud_firebase
  - Purpose: Manages the NoSQL database provided by Firebase for real-time data storage and synchronization.
  - Features:
      * Store and retrieve structured data.
      * Real-time updates.
      * Offline capabilities.
    `import 'package:cloud_firestore/cloud_firestore.dart';

    FirebaseFirestore firestore = FirebaseFirestore.instance;

    // Add a new document to a collection
    Future<void> addData() async {
      try {
        await firestore.collection("users").add({
          "name": "John Doe",
          "email": "johndoe@example.com",
          "age": 30,
        });
        print("Data added successfully!");
      } catch (e) {
        print("Error: $e");
      }
    }

    // Fetch data from a collection
    Future<void> fetchData() async {
      try {
        QuerySnapshot snapshot = await firestore.collection("users").get();
        snapshot.docs.forEach((doc) {
          print("User: ${doc.data()}");
        });
      } catch (e) {
        print("Error: $e");
      }
    }`
