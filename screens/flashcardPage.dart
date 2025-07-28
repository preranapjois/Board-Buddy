import 'package:flutter/material.dart';
import 'dart:math';

/// Flashcard data
final Map<String, List<Map<String, String>>> flashcardData = {
  'Physics': [
    {'question': 'What is Newton’s first law?', 'answer': 'Law of inertia'},
    {'question': 'What is the speed of light?', 'answer': '3x10^8 m/s'},
    {'question': 'SI unit of force?', 'answer': 'Newton'},
    {'question': 'What does a convex lens do?', 'answer': 'Converges light rays'},
    {'question': 'What is Ohm’s law?', 'answer': 'V = IR'},
    // New questions (mix correct & incorrect)
    {'question': 'What is the acceleration due to gravity on Earth?', 'answer': '9.8 m/s²'},
    {'question': 'What is the unit of electric current?', 'answer': 'Ampere'},
    {'question': 'Light travels faster in water than in air.', 'answer': 'False'}, // Incorrect statement
    {'question': 'Sound can travel in vacuum.', 'answer': 'False'}, // Incorrect statement
    {'question': 'What is the frequency of audible sound range?', 'answer': '20 Hz to 20,000 Hz'},
  ],

  'Chemistry': [
    {'question': 'Symbol of Sodium?', 'answer': 'Na'},
    {'question': 'H2O is?', 'answer': 'Water'},
    {'question': 'Atomic number of Hydrogen?', 'answer': '1'},
    {'question': 'Who created the Periodic Table?', 'answer': 'Dmitri Mendeleev'},
    {'question': 'What is an acid?', 'answer': 'Substance that donates H⁺ ions'},
    // New questions
    {'question': 'What is the chemical formula of ammonia?', 'answer': 'NH3'},
    {'question': 'Salt is formed by neutralization of acid and base.', 'answer': 'True'},
    {'question': 'Water is a compound made of hydrogen and oxygen in 2:1 ratio.', 'answer': 'True'},
    {'question': 'NaCl is an organic compound.', 'answer': 'False'}, // Incorrect
    {'question': 'What is the pH of pure water?', 'answer': '7'},
  ],

  'Maths': [
    {'question': 'What is the square root of 16?', 'answer': '4'},
    {'question': 'π approximately equals?', 'answer': '3.14'},
    {'question': 'Area of a circle formula?', 'answer': 'πr²'},
    {'question': 'What is 7 × 8?', 'answer': '56'},
    {'question': 'What is the value of cos(0°)?', 'answer': '1'},
    // New questions
    {'question': 'What is 15% of 200?', 'answer': '30'},
    {'question': 'Is 0 a natural number?', 'answer': 'False'}, // Depends on definition but commonly no
    {'question': 'The sum of angles in a triangle is 180°.', 'answer': 'True'},
    {'question': 'Square root of 25 is 6.', 'answer': 'False'},
    {'question': 'The number pi is rational.', 'answer': 'False'},
  ],

  'Biology': [
    {'question': 'Basic unit of life?', 'answer': 'Cell'},
    {'question': 'Green pigment in plants?', 'answer': 'Chlorophyll'},
    {'question': 'Blood is filtered by?', 'answer': 'Kidneys'},
    {'question': 'Photosynthesis takes place in?', 'answer': 'Leaves'},
    {'question': 'DNA stands for?', 'answer': 'Deoxyribonucleic Acid'},
    // New questions
    {'question': 'Humans have 5 senses.', 'answer': 'True'},
    {'question': 'The heart pumps blood.', 'answer': 'True'},
    {'question': 'Bacteria are viruses.', 'answer': 'False'},
    {'question': 'Mitochondria is the powerhouse of the cell.', 'answer': 'True'},
    {'question': 'Red blood cells carry oxygen.', 'answer': 'True'},
  ],

  'Civics': [
    {'question': 'Who is the head of state in India?', 'answer': 'President'},
    {'question': 'What is democracy?', 'answer': 'Rule by the people'},
    {'question': 'What is the Constitution?', 'answer': 'Supreme law of the land'},
    {'question': 'Tenure of Lok Sabha?', 'answer': '5 years'},
    {'question': 'Who elects the President?', 'answer': 'Electoral College'},
    // New questions
    {'question': 'India is a federal country.', 'answer': 'True'},
    {'question': 'The Prime Minister is the head of state.', 'answer': 'False'},
    {'question': 'Supreme Court is the highest judicial body.', 'answer': 'True'},
    {'question': 'The Right to Vote is called Franchise.', 'answer': 'True'},
    {'question': 'Rajya Sabha is the lower house.', 'answer': 'False'},
  ],

  'Economics': [
    {'question': 'Study of production and consumption?', 'answer': 'Economics'},
    {'question': 'What is GDP?', 'answer': 'Gross Domestic Product'},
    {'question': 'Who prepares the budget in India?', 'answer': 'Finance Minister'},
    {'question': 'Main sectors of economy?', 'answer': 'Primary, Secondary, Tertiary'},
    {'question': 'Barter system is?', 'answer': 'Exchange of goods without money'},
    // New questions
    {'question': 'Inflation means rise in prices.', 'answer': 'True'},
    {'question': 'Demand decreases when price increases.', 'answer': 'True'},
    {'question': 'A deficit budget means surplus income.', 'answer': 'False'},
    {'question': 'Microeconomics studies individual markets.', 'answer': 'True'},
    {'question': 'Fiscal policy relates to government spending and taxes.', 'answer': 'True'},
  ],

  'History': [
    {'question': 'Who was the first President of India?', 'answer': 'Dr. Rajendra Prasad'},
    {'question': 'When did India gain independence?', 'answer': '1947'},
    {'question': 'Who was the Father of the Nation?', 'answer': 'Mahatma Gandhi'},
    {'question': 'Capital of the Mughal Empire?', 'answer': 'Delhi'},
    {'question': 'Which war ended British rule?', 'answer': 'Second World War'},
    // New questions
    {'question': 'The Indian National Congress was founded in 1885.', 'answer': 'True'},
    {'question': 'Ashoka was a Mughal Emperor.', 'answer': 'False'},
    {'question': 'The British left India in 1947.', 'answer': 'True'},
    {'question': 'The Revolt of 1857 is also called the First War of Independence.', 'answer': 'True'},
    {'question': 'Akbar was known as Akbar the Great.', 'answer': 'True'},
  ],

  'Geography': [
    {'question': 'Which is the longest river in India?', 'answer': 'Ganga'},
    {'question': 'Capital of Rajasthan?', 'answer': 'Jaipur'},
    {'question': 'Which planet is known as the Red Planet?', 'answer': 'Mars'},
    {'question': 'Layers of atmosphere?', 'answer': 'Troposphere, Stratosphere, etc.'},
    {'question': 'Which soil is best for cotton?', 'answer': 'Black soil'},
    // New questions
    {'question': 'Mount Everest is the highest mountain in the world.', 'answer': 'True'},
    {'question': 'India lies in the southern hemisphere.', 'answer': 'False'},
    {'question': 'The equator passes through India.', 'answer': 'False'},
    {'question': 'Sundarbans is a mangrove forest.', 'answer': 'True'},
    {'question': 'Deserts receive heavy rainfall.', 'answer': 'False'},
  ],
};



class FlashcardPage extends StatefulWidget {
  final String subject;
  const FlashcardPage({super.key, required this.subject});

  @override
  State<FlashcardPage> createState() => _FlashcardPageState();
}

class _FlashcardPageState extends State<FlashcardPage>
    with SingleTickerProviderStateMixin {
  late List<Map<String, String>> cards;
  int currentIndex = 0;
  bool showFront = true;
  int correctCount = 0;
  int incorrectCount = 0;

  @override
  void initState() {
    super.initState();
    cards = flashcardData[widget.subject] ?? [];
  }

  void flipCard() {
    setState(() {
      showFront = !showFront;
    });
  }

  void markCorrect() {
    setState(() {
      correctCount++;
      nextCard();
    });
  }

  void markIncorrect() {
    setState(() {
      incorrectCount++;
      nextCard();
    });
  }

  void nextCard() {
    if (currentIndex < cards.length - 1) {
      currentIndex++;
      showFront = true;
    } else {
      showDialog(
        context: context,
        builder: (_) => AlertDialog(
          title: const Text('Summary'),
          content: Text('Correct: $correctCount\nIncorrect: $incorrectCount'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                setState(() {
                  currentIndex = 0;
                  correctCount = 0;
                  incorrectCount = 0;
                  showFront = true;
                });
              },
              child: const Text('Restart'),
            )
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    if (cards.isEmpty) {
      return Scaffold(
        appBar: AppBar(title: Text('${widget.subject} Flashcards')),
        body: const Center(child: Text('No flashcards available.')),
      );
    }

    final card = cards[currentIndex];
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.subject} Flashcards'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: GestureDetector(
                onTap: flipCard,
                child: AnimatedSwitcher(
                  duration: const Duration(milliseconds: 500),
                  transitionBuilder: (child, animation) => RotationYTransition(
                    turns: animation,
                    child: child,
                  ),
                  child: Container(
                    key: ValueKey<bool>(showFront),
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 183, 157, 231),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Text(
                      showFront ? card['question']! : card['answer']!,
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: markCorrect,
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                  child: const Text('Correct'),
                ),
                ElevatedButton(
                  onPressed: markIncorrect,
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  child: const Text('Incorrect'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

/// Flip animation widget
class RotationYTransition extends AnimatedWidget {
  final Widget child;
  const RotationYTransition({Key? key, required Animation<double> turns, required this.child})
      : super(key: key, listenable: turns);

  @override
  Widget build(BuildContext context) {
    final Animation<double> turns = listenable as Animation<double>;
    final angle = turns.value * pi;
    final transform = Matrix4.identity()..setEntry(3, 2, 0.001)..rotateY(angle);

    return Transform(
      transform: transform,
      alignment: Alignment.center,
      child: angle > pi / 2
          ? Transform(
              alignment: Alignment.center,
              transform: Matrix4.rotationY(pi),
              child: child,
            )
          : child,
    );
  }
}
