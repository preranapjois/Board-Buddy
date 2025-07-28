import 'package:flutter/material.dart';

class SubjectOptionsPage extends StatelessWidget {
  const SubjectOptionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final String subject = ModalRoute.of(context)!.settings.arguments as String;

    // Reusable styled button
    Widget buildOptionButton(String label, IconData icon, VoidCallback onPressed) {
      return ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
          backgroundColor: Colors.white,
          foregroundColor: const Color(0xFF8A2BE2),
          elevation: 10,
          shadowColor: Colors.cyanAccent.withOpacity(0.5),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          textStyle: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.1,
            fontFamily: 'Montserrat',
          ),
        ),
        icon: Icon(icon, size: 28),
        label: Text(label),
        onPressed: onPressed,
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Options for $subject",
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 1.2,
            fontFamily: 'Montserrat',
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            tooltip: 'Logout',
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(context, '/login', (route) => false);
            },
          ),
        ],
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF8A2BE2), Color(0xFF00CED1)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
        elevation: 5,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF8A2BE2), Color(0xFF00CED1)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              buildOptionButton('Materials (PDFs)', Icons.picture_as_pdf, () {
                Navigator.pushNamed(context, '/materials', arguments: subject);
              }),
              const SizedBox(height: 20),
              buildOptionButton('Quiz', Icons.quiz, () {
                Navigator.pushNamed(context, '/quiz', arguments: subject);
              }),
              const SizedBox(height: 20),
              buildOptionButton('Flashcards', Icons.style, () {
                Navigator.pushNamed(context, '/flashcards', arguments: subject);
              }),
              const SizedBox(height: 20),
              buildOptionButton('Feedback', Icons.feedback, () {
                Navigator.pushNamed(context, '/feedback', arguments: subject);
              }),
            ],
          ),
        ),
      ),
    );
  }
}
