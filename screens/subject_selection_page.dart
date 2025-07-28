import 'package:flutter/material.dart';

class SubjectSelectionPage extends StatefulWidget {
  const SubjectSelectionPage({super.key});

  @override
  _SubjectSelectionPageState createState() => _SubjectSelectionPageState();
}

class _SubjectSelectionPageState extends State<SubjectSelectionPage> {
  final List<String> subjects = [
    'Physics',
    'Chemistry',
    'Maths',
    'Biology',
    'Civics',
    'Economics',
    'History',
    'Geography'
  ];

  String? selectedSubject;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,  // <-- disables the back button
        title: const Text(
          "Select a Subject",
          style: TextStyle(
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
              Navigator.pushNamedAndRemoveUntil(
                  context, '/login', (route) => false);
            },
          ),
        ],
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF6A5ACD), Color(0xFF00BFFF)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        elevation: 5,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF6A5ACD), Color(0xFF00BFFF)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 12),
        child: ListView.separated(
          itemCount: subjects.length,
          separatorBuilder: (_, __) => const SizedBox(height: 16),
          itemBuilder: (context, index) {
            final subject = subjects[index];
            final isSelected = selectedSubject == subject;

            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedSubject = subject;
                });
                Navigator.pushNamed(context, '/options',
                    arguments: selectedSubject);
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                padding:
                    const EdgeInsets.symmetric(vertical: 18, horizontal: 24),
                decoration: BoxDecoration(
                  gradient: isSelected
                      ? const LinearGradient(
                          colors: [Color(0xFFFFD700), Color(0xFFFFA500)],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        )
                      : LinearGradient(
                          colors: [
                            Colors.white.withOpacity(0.15),
                            Colors.white.withOpacity(0.05)
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: isSelected
                      ? [
                          BoxShadow(
                            color: Colors.orange.withOpacity(0.6),
                            blurRadius: 15,
                            offset: const Offset(0, 6),
                          )
                        ]
                      : [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            blurRadius: 8,
                            offset: const Offset(0, 3),
                          )
                        ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      subject,
                      style: TextStyle(
                        color: isSelected
                            ? Colors.white
                            : Colors.white.withOpacity(0.9),
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Montserrat',
                        letterSpacing: 1.1,
                      ),
                    ),
                    if (isSelected)
                      const Icon(
                        Icons.check_circle,
                        color: Colors.white,
                        size: 28,
                      )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
