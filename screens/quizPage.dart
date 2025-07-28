import 'package:flutter/material.dart';

// Quiz Question Model
class QuizQuestion {
  final String question;
  final List<String> options;
  final String correctAnswer;

  QuizQuestion({
    required this.question,
    required this.options,
    required this.correctAnswer,
  });
}

// Quiz Data with tougher questions added
final Map<String, List<QuizQuestion>> quizData = {
  'Physics': [
    QuizQuestion(
      question: 'What is the unit of force?',
      options: ['Newton', 'Joule', 'Watt', 'Pascal'],
      correctAnswer: 'Newton',
    ),
    QuizQuestion(
      question: 'Speed is a ______ quantity.',
      options: ['Scalar', 'Vector', 'Unitless', 'Undefined'],
      correctAnswer: 'Scalar',
    ),
    QuizQuestion(
      question: 'Acceleration is rate of change of?',
      options: ['Velocity', 'Speed', 'Mass', 'Density'],
      correctAnswer: 'Velocity',
    ),
    QuizQuestion(
      question: 'SI unit of work?',
      options: ['Joule', 'Watt', 'Newton', 'Ohm'],
      correctAnswer: 'Joule',
    ),
    QuizQuestion(
      question: 'Formula for Power?',
      options: ['Work/Time', 'Force*Distance', 'Mass*Acceleration', 'Speed/Time'],
      correctAnswer: 'Work/Time',
    ),
    QuizQuestion(
      question: 'Light travels in?',
      options: ['Straight line', 'Curved line', 'Zigzag', 'None'],
      correctAnswer: 'Straight line',
    ),
    QuizQuestion(
      question: 'Which lens is used in a microscope?',
      options: ['Convex', 'Concave', 'Bifocal', 'Flat'],
      correctAnswer: 'Convex',
    ),
    QuizQuestion(
      question: 'Laws of reflection are valid for?',
      options: ['Plane Mirror', 'Curved Mirror', 'All surfaces', 'Only Glass'],
      correctAnswer: 'All surfaces',
    ),
    QuizQuestion(
      question: 'SI unit of frequency?',
      options: ['Hertz', 'Watt', 'Joule', 'Tesla'],
      correctAnswer: 'Hertz',
    ),
    QuizQuestion(
      question: 'Sound needs ____ to travel.',
      options: ['Medium', 'Vacuum', 'Darkness', 'Nothing'],
      correctAnswer: 'Medium',
    ),
    // Tougher physics questions
    QuizQuestion(
      question: 'Which of the following is a scalar quantity?',
      options: ['Force', 'Displacement', 'Speed', 'Velocity'],
      correctAnswer: 'Speed',
    ),
    QuizQuestion(
      question: 'What happens to the resistance of a wire if its length is doubled and area of cross-section is halved?',
      options: ['Resistance doubles', 'Resistance halves', 'Resistance quadruples', 'Resistance remains same'],
      correctAnswer: 'Resistance quadruples',
    ),
    QuizQuestion(
      question: 'The half-life of a radioactive substance is 5 years. How much of a 80 g sample remains after 15 years?',
      options: ['10 g', '20 g', '40 g', '5 g'],
      correctAnswer: '10 g',
    ),
  ],
  'Chemistry': [
    QuizQuestion(
      question: 'Atomic number represents?',
      options: ['Number of protons', 'Number of neutrons', 'Number of electrons', 'Mass number'],
      correctAnswer: 'Number of protons',
    ),
    QuizQuestion(
      question: 'Water is a?',
      options: ['Compound', 'Element', 'Mixture', 'Solution'],
      correctAnswer: 'Compound',
    ),
    QuizQuestion(
      question: 'pH value of pure water is?',
      options: ['7', '0', '14', '1'],
      correctAnswer: '7',
    ),
    QuizQuestion(
      question: 'Gas evolved when acids react with metals?',
      options: ['Hydrogen', 'Oxygen', 'Nitrogen', 'Carbon dioxide'],
      correctAnswer: 'Hydrogen',
    ),
    QuizQuestion(
      question: 'Atomic mass is sum of?',
      options: ['Protons and Neutrons', 'Protons and Electrons', 'Neutrons and Electrons', 'Only Protons'],
      correctAnswer: 'Protons and Neutrons',
    ),
    QuizQuestion(
      question: 'Chemical symbol for Gold?',
      options: ['Au', 'Ag', 'Gd', 'Go'],
      correctAnswer: 'Au',
    ),
    QuizQuestion(
      question: 'What is Avogadro’s number?',
      options: ['6.022 x 10^23', '3.14', '9.81', '1.6 x 10^-19'],
      correctAnswer: '6.022 x 10^23',
    ),
    QuizQuestion(
      question: 'Which gas is known as laughing gas?',
      options: ['Nitrous oxide', 'Carbon monoxide', 'Nitrogen', 'Oxygen'],
      correctAnswer: 'Nitrous oxide',
    ),
    QuizQuestion(
      question: 'Salt is formed by?',
      options: ['Acid + Base', 'Acid + Metal', 'Base + Metal', 'Acid + Acid'],
      correctAnswer: 'Acid + Base',
    ),
    QuizQuestion(
      question: 'Boiling point of water?',
      options: ['100°C', '90°C', '80°C', '120°C'],
      correctAnswer: '100°C',
    ),
    // Tougher chemistry questions
    QuizQuestion(
      question: 'Which of these is an example of a covalent bond?',
      options: ['NaCl', 'H2O', 'MgO', 'CaCl2'],
      correctAnswer: 'H2O',
    ),
    QuizQuestion(
      question: 'Which element has the highest electronegativity?',
      options: ['Oxygen', 'Fluorine', 'Nitrogen', 'Chlorine'],
      correctAnswer: 'Fluorine',
    ),
    QuizQuestion(
      question: 'What is the oxidation state of sulfur in H2SO4?',
      options: ['+6', '+4', '-2', '0'],
      correctAnswer: '+6',
    ),
  ],
  'Biology': [
    QuizQuestion(
      question: 'The basic unit of life?',
      options: ['Cell', 'Atom', 'Molecule', 'Organ'],
      correctAnswer: 'Cell',
    ),
    QuizQuestion(
      question: 'Which organ pumps blood?',
      options: ['Heart', 'Liver', 'Lungs', 'Kidney'],
      correctAnswer: 'Heart',
    ),
    QuizQuestion(
      question: 'Plants make food by?',
      options: ['Photosynthesis', 'Respiration', 'Digestion', 'Transpiration'],
      correctAnswer: 'Photosynthesis',
    ),
    QuizQuestion(
      question: 'Largest organ in human body?',
      options: ['Skin', 'Liver', 'Brain', 'Heart'],
      correctAnswer: 'Skin',
    ),
    QuizQuestion(
      question: 'Where is DNA found?',
      options: ['Nucleus', 'Cytoplasm', 'Cell Membrane', 'Mitochondria'],
      correctAnswer: 'Nucleus',
    ),
    QuizQuestion(
      question: 'Which blood group is universal donor?',
      options: ['O-', 'A+', 'B+', 'AB+'],
      correctAnswer: 'O-',
    ),
    QuizQuestion(
      question: 'Humans have how many chromosomes?',
      options: ['46', '23', '44', '22'],
      correctAnswer: '46',
    ),
    QuizQuestion(
      question: 'Which vitamin is produced by sunlight?',
      options: ['Vitamin D', 'Vitamin A', 'Vitamin C', 'Vitamin B12'],
      correctAnswer: 'Vitamin D',
    ),
    QuizQuestion(
      question: 'Which system controls hormones?',
      options: ['Endocrine', 'Nervous', 'Digestive', 'Respiratory'],
      correctAnswer: 'Endocrine',
    ),
    QuizQuestion(
      question: 'Red blood cells carry?',
      options: ['Oxygen', 'Carbon dioxide', 'Nutrients', 'Hormones'],
      correctAnswer: 'Oxygen',
    ),
    // Tougher biology questions
    QuizQuestion(
      question: 'What is the role of ribosomes in the cell?',
      options: ['Protein synthesis', 'Energy production', 'Storage', 'Cell division'],
      correctAnswer: 'Protein synthesis',
    ),
    QuizQuestion(
      question: 'Which process converts glucose into pyruvate?',
      options: ['Glycolysis', 'Photosynthesis', 'Fermentation', 'Respiration'],
      correctAnswer: 'Glycolysis',
    ),
    QuizQuestion(
      question: 'Which part of the brain controls balance?',
      options: ['Cerebellum', 'Cerebrum', 'Medulla', 'Hypothalamus'],
      correctAnswer: 'Cerebellum',
    ),
  ],
  'Maths': [
    QuizQuestion(
      question: 'What is the value of π?',
      options: ['3.14', '2.71', '1.41', '1.61'],
      correctAnswer: '3.14',
    ),
    QuizQuestion(
      question: 'Square root of 64?',
      options: ['8', '6', '7', '9'],
      correctAnswer: '8',
    ),
    QuizQuestion(
      question: 'What is 7 x 8?',
      options: ['56', '54', '58', '60'],
      correctAnswer: '56',
    ),
    QuizQuestion(
      question: 'Area of a circle formula?',
      options: ['πr²', '2πr', 'πd', 'r²'],
      correctAnswer: 'πr²',
    ),
    QuizQuestion(
      question: 'What is 15% of 200?',
      options: ['30', '25', '35', '40'],
      correctAnswer: '30',
    ),
    QuizQuestion(
      question: 'The sum of angles in a triangle?',
      options: ['180°', '90°', '360°', '270°'],
      correctAnswer: '180°',
    ),
    QuizQuestion(
      question: 'Solve: 5 + 3 x 2',
      options: ['11', '16', '13', '10'],
      correctAnswer: '11',
    ),
    QuizQuestion(
      question: 'The equation of a straight line is?',
      options: ['y = mx + c', 'y = x²', 'x² + y² = r²', 'y = ax² + bx + c'],
      correctAnswer: 'y = mx + c',
    ),
    QuizQuestion(
      question: 'The value of √81 is?',
      options: ['9', '8', '7', '6'],
      correctAnswer: '9',
    ),
    QuizQuestion(
      question: 'If x = 3 and y = 4, then x² + y² = ?',
      options: ['25', '12', '7', '5'],
      correctAnswer: '25',
    ),
    // Tougher maths questions
    QuizQuestion(
      question: 'What is the derivative of x²?',
      options: ['2x', 'x', 'x²', '1'],
      correctAnswer: '2x',
    ),
    QuizQuestion(
      question: 'If a triangle has sides 3, 4, and 5, what type of triangle is it?',
      options: ['Right angled', 'Equilateral', 'Isosceles', 'Scalene'],
      correctAnswer: 'Right angled',
    ),
    QuizQuestion(
      question: 'What is the sum of the first 10 natural numbers?',
      options: ['55', '45', '50', '60'],
      correctAnswer: '55',
    ),
  ],
  'History': [
    QuizQuestion(
      question: 'Who was the first President of India?',
      options: ['Dr. Rajendra Prasad', 'Mahatma Gandhi', 'Jawaharlal Nehru', 'Sardar Patel'],
      correctAnswer: 'Dr. Rajendra Prasad',
    ),
    QuizQuestion(
      question: 'The Indian freedom struggle began in?',
      options: ['1857', '1947', '1919', '1930'],
      correctAnswer: '1857',
    ),
    QuizQuestion(
      question: 'The capital of the Maurya Empire?',
      options: ['Pataliputra', 'Delhi', 'Varanasi', 'Ayodhya'],
      correctAnswer: 'Pataliputra',
    ),
    QuizQuestion(
      question: 'Who wrote the Indian National Anthem?',
      options: ['Rabindranath Tagore', 'Bankim Chandra Chatterjee', 'Sarojini Naidu', 'Subhash Chandra Bose'],
      correctAnswer: 'Rabindranath Tagore',
    ),
    QuizQuestion(
      question: 'Who was known as the “Iron Man of India”?',
      options: ['Sardar Vallabhbhai Patel', 'Jawaharlal Nehru', 'Bhagat Singh', 'Subhash Chandra Bose'],
      correctAnswer: 'Sardar Vallabhbhai Patel',
    ),
    QuizQuestion(
      question: 'The British rule in India ended in?',
      options: ['1947', '1950', '1935', '1919'],
      correctAnswer: '1947',
    ),
    QuizQuestion(
      question: 'The Jallianwala Bagh massacre happened in which year?',
      options: ['1919', '1920', '1915', '1930'],
      correctAnswer: '1919',
    ),
    QuizQuestion(
      question: 'Who was the founder of the Mughal Empire?',
      options: ['Babur', 'Akbar', 'Shah Jahan', 'Aurangzeb'],
      correctAnswer: 'Babur',
    ),
    QuizQuestion(
      question: 'Which movement was led by Mahatma Gandhi in 1930?',
      options: ['Dandi Salt March', 'Quit India Movement', 'Non-Cooperation Movement', 'Swadeshi Movement'],
      correctAnswer: 'Dandi Salt March',
    ),
    QuizQuestion(
      question: 'The “Doctrine of Lapse” was introduced by?',
      options: ['Lord Dalhousie', 'Lord Curzon', 'Lord Cornwallis', 'Lord Mountbatten'],
      correctAnswer: 'Lord Dalhousie',
    ),
    // Tougher history questions
    QuizQuestion(
      question: 'Who was the first female ruler of India?',
      options: ['Razia Sultana', 'Nur Jahan', 'Indira Gandhi', 'Ahilyabai Holkar'],
      correctAnswer: 'Razia Sultana',
    ),
    QuizQuestion(
      question: 'The Treaty of Versailles was signed after which war?',
      options: ['World War I', 'World War II', 'Cold War', 'French Revolution'],
      correctAnswer: 'World War I',
    ),
    QuizQuestion(
      question: 'Which emperor built the Taj Mahal?',
      options: ['Shah Jahan', 'Akbar', 'Babur', 'Aurangzeb'],
      correctAnswer: 'Shah Jahan',
    ),
  ],
  'Geography': [
    QuizQuestion(
      question: 'The longest river in the world?',
      options: ['Nile', 'Amazon', 'Ganga', 'Yamuna'],
      correctAnswer: 'Nile',
    ),
    QuizQuestion(
      question: 'Mount Everest is located in?',
      options: ['Himalayas', 'Andes', 'Rocky Mountains', 'Alps'],
      correctAnswer: 'Himalayas',
    ),
    QuizQuestion(
      question: 'Which is the largest desert?',
      options: ['Sahara', 'Thar', 'Gobi', 'Kalahari'],
      correctAnswer: 'Sahara',
    ),
    QuizQuestion(
      question: 'Which ocean is the largest?',
      options: ['Pacific', 'Atlantic', 'Indian', 'Arctic'],
      correctAnswer: 'Pacific',
    ),
    QuizQuestion(
      question: 'The equator passes through?',
      options: ['Ecuador', 'India', 'Canada', 'Russia'],
      correctAnswer: 'Ecuador',
    ),
    QuizQuestion(
      question: 'Which country is known as the Land of Rising Sun?',
      options: ['Japan', 'China', 'Korea', 'Thailand'],
      correctAnswer: 'Japan',
    ),
    QuizQuestion(
      question: 'Tsunamis are caused by?',
      options: ['Underwater earthquakes', 'Volcanoes', 'Storms', 'Tornadoes'],
      correctAnswer: 'Underwater earthquakes',
    ),
    QuizQuestion(
      question: 'Which continent has the most countries?',
      options: ['Africa', 'Asia', 'Europe', 'South America'],
      correctAnswer: 'Africa',
    ),
    QuizQuestion(
      question: 'What type of rock is formed by cooling of magma?',
      options: ['Igneous', 'Sedimentary', 'Metamorphic', 'Fossil'],
      correctAnswer: 'Igneous',
    ),
    QuizQuestion(
      question: 'The study of Earth’s atmosphere is called?',
      options: ['Meteorology', 'Geology', 'Oceanography', 'Ecology'],
      correctAnswer: 'Meteorology',
    ),
    // Tougher geography questions
    QuizQuestion(
      question: 'Which layer of Earth is liquid?',
      options: ['Outer core', 'Inner core', 'Mantle', 'Crust'],
      correctAnswer: 'Outer core',
    ),
    QuizQuestion(
      question: 'The Great Barrier Reef is located in which country?',
      options: ['Australia', 'USA', 'South Africa', 'India'],
      correctAnswer: 'Australia',
    ),
    QuizQuestion(
      question: 'What causes seasons on Earth?',
      options: ['Tilt of Earth’s axis', 'Distance from Sun', 'Rotation of Earth', 'Revolution of Moon'],
      correctAnswer: 'Tilt of Earth’s axis',
    ),
  ],
  'Economics': [
    QuizQuestion(
      question: 'GDP stands for?',
      options: ['Gross Domestic Product', 'General Domestic Product', 'Gross Development Product', 'General Development Product'],
      correctAnswer: 'Gross Domestic Product',
    ),
    QuizQuestion(
      question: 'Inflation means?',
      options: ['Rise in prices', 'Fall in prices', 'Stable prices', 'Deflation'],
      correctAnswer: 'Rise in prices',
    ),
    QuizQuestion(
      question: 'Demand means?',
      options: ['Willingness to buy', 'Willingness to sell', 'Ability to sell', 'Ability to produce'],
      correctAnswer: 'Willingness to buy',
    ),
    QuizQuestion(
      question: 'Which is a primary sector activity?',
      options: ['Farming', 'Manufacturing', 'Banking', 'Transport'],
      correctAnswer: 'Farming',
    ),
    QuizQuestion(
      question: 'Money used for trade is called?',
      options: ['Currency', 'Credit', 'Debit', 'Loan'],
      correctAnswer: 'Currency',
    ),
    QuizQuestion(
      question: 'A person who takes risks to start a business is?',
      options: ['Entrepreneur', 'Investor', 'Worker', 'Consumer'],
      correctAnswer: 'Entrepreneur',
    ),
    QuizQuestion(
      question: 'Supply means?',
      options: ['Availability of goods', 'Demand of goods', 'Consumption of goods', 'Production of goods'],
      correctAnswer: 'Availability of goods',
    ),
    QuizQuestion(
      question: 'Market economy is also called?',
      options: ['Capitalist economy', 'Socialist economy', 'Mixed economy', 'Traditional economy'],
      correctAnswer: 'Capitalist economy',
    ),
    QuizQuestion(
      question: 'Taxes collected by government are?',
      options: ['Revenue', 'Profit', 'Loss', 'Expenditure'],
      correctAnswer: 'Revenue',
    ),
    QuizQuestion(
      question: 'What is inflation?',
      options: ['Increase in prices', 'Decrease in prices', 'Stable prices', 'None of these'],
      correctAnswer: 'Increase in prices',
    ),
    // Tougher economics questions
    QuizQuestion(
      question: 'Who is known as the Father of Economics?',
      options: ['Adam Smith', 'John Maynard Keynes', 'Karl Marx', 'David Ricardo'],
      correctAnswer: 'Adam Smith',
    ),
    QuizQuestion(
      question: 'What is meant by “Opportunity Cost”?',
      options: ['Cost of next best alternative', 'Actual cost', 'Sunk cost', 'Fixed cost'],
      correctAnswer: 'Cost of next best alternative',
    ),
    QuizQuestion(
      question: 'Fiscal policy is related to?',
      options: ['Government spending and taxation', 'Money supply', 'Price control', 'Foreign trade'],
      correctAnswer: 'Government spending and taxation',
    ),
  ],
};

void main() {
  runApp(const QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BoardBuddy Quiz',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const SubjectSelectionPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SubjectSelectionPage extends StatelessWidget {
  const SubjectSelectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    final subjects = quizData.keys.toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Subject for Quiz'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: subjects.length,
        itemBuilder: (context, index) {
          final subject = subjects[index];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
            child: ListTile(
              title: Text(subject),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => QuizPage(subject: subject),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  final String subject;

  const QuizPage({super.key, required this.subject});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  late List<QuizQuestion> questions;
  int currentIndex = 0;
  int score = 0;
  bool answered = false;
  String selectedAnswer = '';

  @override
  void initState() {
    super.initState();
    questions = quizData[widget.subject]!;
    questions.shuffle(); // Shuffle questions
  }

  void selectAnswer(String answer) {
    if (answered) return; // prevent multiple answers for the same question
    setState(() {
      selectedAnswer = answer;
      answered = true;
      if (answer == questions[currentIndex].correctAnswer) {
        score++;
      }
    });
  }

  void nextQuestion() {
    if (!answered) return;
    setState(() {
      if (currentIndex < questions.length - 1) {
        currentIndex++;
        answered = false;
        selectedAnswer = '';
      } else {
        // Quiz finished - show result dialog
        showDialog(
          context: context,
          barrierDismissible: false,
          builder: (_) => AlertDialog(
            title: const Text('Quiz Completed'),
            content: Text('Your score: $score / ${questions.length}'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context); // close dialog
                  Navigator.pop(context); // back to subject selection
                },
                child: const Text('OK'),
              ),
            ],
          ),
        );
      }
    });
  }

  Color optionColor(String option) {
    if (!answered) return Colors.black;
    if (option == questions[currentIndex].correctAnswer) {
      return Colors.green;
    }
    if (option == selectedAnswer && selectedAnswer != questions[currentIndex].correctAnswer) {
      return Colors.red;
    }
    return Colors.black;
  }

  @override
  Widget build(BuildContext context) {
    final question = questions[currentIndex];

    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.subject} Quiz'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Question ${currentIndex + 1} of ${questions.length}',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 12),
            Text(
              question.question,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ...question.options.map(
              (option) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 6),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: answered
                        ? (option == question.correctAnswer
                            ? Colors.green.shade300
                            : option == selectedAnswer
                                ? Colors.red.shade300
                                : Colors.grey.shade200)
                        : Colors.indigo.shade50,
                    foregroundColor: optionColor(option),
                    padding: const EdgeInsets.symmetric(vertical: 14),
                  ),
                  onPressed: () => selectAnswer(option),
                  child: Text(
                    option,
                    style: const TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: answered ? nextQuestion : null,
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 16),
                backgroundColor: answered ? Colors.indigo : Colors.grey,
              ),
              child: Text(
                currentIndex == questions.length - 1 ? 'Finish' : 'Next',
                style: const TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
