import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'firebase_options.dart';

// Screens with aliases to avoid naming conflicts
import 'screens/logo_page.dart';
import 'screens/welcome_page.dart';
import 'screens/login_page.dart';
import 'screens/subject_selection_page.dart' as subject_page; // Aliased
import 'screens/subject_options_page.dart';
import 'screens/quiz_page.dart' as quiz_page; // Aliased
import 'screens/flashcard_page.dart';
import 'screens/progress_page.dart';
import 'screens/materials_page.dart';
import 'screens/feedback_page.dart'; // ✅ New import

// Route constants
const String routeLogo = '/';
const String routeWelcome = '/welcome';
const String routeLogin = '/login';
const String routeSubjects = '/subjects';
const String routeOptions = '/options';
const String routeProgress = '/progress';
const String routeQuiz = '/quiz';
const String routeFlashcards = '/flashcards';
const String routeMaterials = '/materials';
const String routeFeedback = '/feedback'; // ✅ New route

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await testFirestore(); // Optional test

  runApp(const BoardBuddyApp());
}

Future<void> testFirestore() async {
  try {
    final testDoc = FirebaseFirestore.instance.collection('test').doc('hello');
    await testDoc.set({'message': 'Hello from Board Buddy!'});
    final snapshot = await testDoc.get();
    print('✅ Firestore Test Read: ${snapshot.data()}');
  } catch (e) {
    print('❌ Firestore Test Failed: $e');
  }
}

class BoardBuddyApp extends StatelessWidget {
  const BoardBuddyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Board Buddy',
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF1F1D36),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF6A5ACD),
          brightness: Brightness.dark,
        ).copyWith(
          primary: const Color(0xFF6A5ACD),
          secondary: const Color(0xFF00BFFF),
        ),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.white, fontSize: 18),
          bodyMedium: TextStyle(color: Colors.white70),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF00BFFF),
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      initialRoute: routeLogo,
      routes: {
        routeLogo: (context) => LogoPage(),
        routeWelcome: (context) => WelcomePage(),
        routeLogin: (context) => const LoginPage(),
        routeSubjects: (context) => subject_page.SubjectSelectionPage(),
        routeOptions: (context) => SubjectOptionsPage(),
        routeProgress: (context) => ProgressPage(), // No args constructor
        routeFeedback: (context) => const FeedbackPage(),
      },
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case routeQuiz:
            final subject = settings.arguments as String;
            return MaterialPageRoute(
              builder: (_) => quiz_page.QuizPage(subject: subject),
            );
          case routeFlashcards:
            final subject = settings.arguments as String;
            return MaterialPageRoute(
              builder: (_) => FlashcardPage(subject: subject),
            );
          case routeMaterials:
            final subject = settings.arguments as String;
            return MaterialPageRoute(
              builder: (_) => MaterialsPage(subject: subject),
            );
          default:
            return MaterialPageRoute(
              builder: (_) => const Scaffold(
                body: Center(
                  child: Text(
                    '404 - Page not found',
                    style: TextStyle(fontSize: 24, color: Colors.redAccent),
                  ),
                ),
              ),
            );
        }
      },
    );
  }
}
