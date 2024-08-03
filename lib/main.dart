import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(FinanceTriviaApp());
}

class FinanceTriviaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Finance Trivia',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.orangeAccent),
        textTheme: TextTheme(
          titleLarge: TextStyle(fontSize: 36.0, fontWeight: FontWeight.bold, color: Colors.teal),
          titleMedium: TextStyle(fontSize: 20.0, color: Colors.teal),
          bodyMedium: TextStyle(fontSize: 18.0, color: Colors.black87),
        ),
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.teal,
          textTheme: ButtonTextTheme.primary,
        ),
      ),
      home: TriviaHomePage(),
    );
  }
}

class TriviaHomePage extends StatefulWidget {
  @override
  _TriviaHomePageState createState() => _TriviaHomePageState();
}

class _TriviaHomePageState extends State<TriviaHomePage> {
  int _questionIndex = 0;
  int _score = 0;
  bool _isDarkMode = false;

  final List<Map<String, Object>> _questions = [
    {
      'questionText': 'What is the largest stock exchange in the world?',
      'answers': [
        {'text': 'NASDAQ', 'score': 0},
        {'text': 'New York Stock Exchange', 'score': 1},
        {'text': 'Tokyo Stock Exchange', 'score': 0},
        {'text': 'London Stock Exchange', 'score': 0},
      ],
      'image': 'assets/images/stock_exchange.svg',
    },
    {
      'questionText': 'Who is known as the father of value investing?',
      'answers': [
        {'text': 'Warren Buffett', 'score': 0},
        {'text': 'Peter Lynch', 'score': 0},
        {'text': 'Benjamin Graham', 'score': 1},
        {'text': 'John Templeton', 'score': 0},
      ],
      'image': 'assets/images/benjamin_graham.svg',
    },
    {
      'questionText': 'What term is used to describe a market characterized by falling prices?',
      'answers': [
        {'text': 'Bull Market', 'score': 0},
        {'text': 'Bear Market', 'score': 1},
        {'text': 'Stagnant Market', 'score': 0},
        {'text': 'Volatile Market', 'score': 0},
      ],
      'image': 'assets/images/bear_market.svg',
    },
    {
      'questionText': 'What is the ticker symbol for Apple Inc.?',
      'answers': [
        {'text': 'AAPL', 'score': 1},
        {'text': 'APPL', 'score': 0},
        {'text': 'APPLE', 'score': 0},
        {'text': 'APL', 'score': 0},
      ],
      'image': 'assets/images/apple_logo.svg',
    },
    {
      'questionText': 'What does ETF stand for?',
      'answers': [
        {'text': 'Exchange Traded Fund', 'score': 1},
        {'text': 'Electronic Transfer Fund', 'score': 0},
        {'text': 'Equity Trading Fund', 'score': 0},
        {'text': 'External Trust Fund', 'score': 0},
      ],
      'image': 'assets/images/etf_concept.svg',
    },
    {
      'questionText': 'Who is the current CEO of Tesla, Inc.?',
      'answers': [
        {'text': 'Jeff Bezos', 'score': 0},
        {'text': 'Tim Cook', 'score': 0},
        {'text': 'Elon Musk', 'score': 1},
        {'text': 'Sundar Pichai', 'score': 0},
      ],
      'image': 'assets/images/elon_musk.svg',
    },
    {
      'questionText': 'Which company is known for its "Just Do It" slogan?',
      'answers': [
        {'text': 'Adidas', 'score': 0},
        {'text': 'Nike', 'score': 1},
        {'text': 'Puma', 'score': 0},
        {'text': 'Under Armour', 'score': 0},
      ],
      'image': 'assets/images/nike_logo.svg',
    },
    {
      'questionText': 'What does IPO stand for?',
      'answers': [
        {'text': 'Initial Public Offering', 'score': 1},
        {'text': 'International Purchase Order', 'score': 0},
        {'text': 'Internal Policy Objective', 'score': 0},
        {'text': 'Interest Payment Option', 'score': 0},
      ],
      'image': 'assets/images/ipo_concept.svg',
    },
    {
      'questionText': 'Which financial metric is calculated as net income divided by revenue?',
      'answers': [
        {'text': 'Profit Margin', 'score': 1},
        {'text': 'Earnings Per Share', 'score': 0},
        {'text': 'Price-Earnings Ratio', 'score': 0},
        {'text': 'Return on Assets', 'score': 0},
      ],
      'image': 'assets/images/profit_margin.svg',
    },
    {
      'questionText': 'What is the primary purpose of a mutual fund?',
      'answers': [
        {'text': 'To provide insurance', 'score': 0},
        {'text': 'To pool money from investors to purchase securities', 'score': 1},
        {'text': 'To offer loans to small businesses', 'score': 0},
        {'text': 'To trade currencies', 'score': 0},
      ],
      'image': 'assets/images/mutual_fund.svg',
    },
    {
      'questionText': 'Which company is known for its "Think Different" slogan?',
      'answers': [
        {'text': 'Microsoft', 'score': 0},
        {'text': 'Apple', 'score': 1},
        {'text': 'IBM', 'score': 0},
        {'text': 'Intel', 'score': 0},
      ],
      'image': 'assets/images/apple_logo.svg',
    },
    {
      'questionText': 'What is the term for a sustained period of economic growth?',
      'answers': [
        {'text': 'Recession', 'score': 0},
        {'text': 'Depression', 'score': 0},
        {'text': 'Expansion', 'score': 1},
        {'text': 'Stagflation', 'score': 0},
      ],
      'image': 'assets/images/expansion.svg',
    },
    {
      'questionText': 'Which company\'s stock symbol is AMZN?',
      'answers': [
        {'text': 'Amazon', 'score': 1},
        {'text': 'AMD', 'score': 0},
        {'text': 'American Express', 'score': 0},
        {'text': 'Amgen', 'score': 0},
      ],
      'image': 'assets/images/amazon_logo.svg',
    },
    {
      'questionText': 'What does P/E ratio stand for?',
      'answers': [
        {'text': 'Price-Earnings Ratio', 'score': 1},
        {'text': 'Public Equity Ratio', 'score': 0},
        {'text': 'Private Equity Ratio', 'score': 0},
        {'text': 'Profit-Earnings Ratio', 'score': 0},
      ],
      'image': 'assets/images/pe_ratio.svg',
    },
    {
      'questionText': 'Who was the chairman of the Federal Reserve from 1987 to 2006?',
      'answers': [
        {'text': 'Ben Bernanke', 'score': 0},
        {'text': 'Paul Volcker', 'score': 0},
        {'text': 'Alan Greenspan', 'score': 1},
        {'text': 'Janet Yellen', 'score': 0},
      ],
      'image': 'assets/images/alan_greenspan.svg',
    },
    {
      'questionText': 'Which financial instrument represents ownership in a company?',
      'answers': [
        {'text': 'Bond', 'score': 0},
        {'text': 'Stock', 'score': 1},
        {'text': 'Derivative', 'score': 0},
        {'text': 'Option', 'score': 0},
      ],
      'image': 'assets/images/stock.svg',
    },
    {
      'questionText': 'What is the full form of GDP?',
      'answers': [
        {'text': 'Gross Domestic Product', 'score': 1},
        {'text': 'Gross Development Product', 'score': 0},
        {'text': 'General Domestic Product', 'score': 0},
        {'text': 'Global Domestic Product', 'score': 0},
      ],
      'image': 'assets/images/gdp.svg',
    },
    {
      'questionText': 'Which financial metric indicates the value of a company compared to its book value?',
      'answers': [
        {'text': 'P/E Ratio', 'score': 0},
        {'text': 'P/B Ratio', 'score': 1},
        {'text': 'ROE', 'score': 0},
        {'text': 'Debt to Equity Ratio', 'score': 0},
      ],
      'image': 'assets/images/pb_ratio.svg',
    },
    {
      'questionText': 'Who is the founder of Berkshire Hathaway?',
      'answers': [
        {'text': 'Charlie Munger', 'score': 0},
        {'text': 'Benjamin Graham', 'score': 0},
        {'text': 'Warren Buffett', 'score': 1},
        {'text': 'Howard Buffett', 'score': 0},
      ],
      'image': 'assets/images/warren_buffett.svg',
    },
    {
      'questionText': 'What does ROE stand for?',
      'answers': [
        {'text': 'Return on Equity', 'score': 1},
        {'text': 'Return on Expense', 'score': 0},
        {'text': 'Revenue on Equity', 'score': 0},
        {'text': 'Rate of Equity', 'score': 0},
      ],
      'image': 'assets/images/roe.svg',
    },
    {
      'questionText': 'Which company is known for its "The Ultimate Driving Machine" slogan?',
      'answers': [
        {'text': 'Mercedes-Benz', 'score': 0},
        {'text': 'Audi', 'score': 0},
        {'text': 'BMW', 'score': 1},
        {'text': 'Tesla', 'score': 0},
      ],
      'image': 'assets/images/bmw_logo.svg',
    },
    {
      'questionText': 'What is the primary goal of a hedge fund?',
      'answers': [
        {'text': 'To provide long-term capital gains', 'score': 0},
        {'text': 'To hedge risk and generate high returns', 'score': 1},
        {'text': 'To invest in real estate', 'score': 0},
        {'text': 'To offer retail banking services', 'score': 0},
      ],
      'image': 'assets/images/hedge_fund.svg',
    },
    {
      'questionText': 'What is the largest cryptocurrency by market capitalization?',
      'answers': [
        {'text': 'Ethereum', 'score': 0},
        {'text': 'Ripple', 'score': 0},
        {'text': 'Bitcoin', 'score': 1},
        {'text': 'Litecoin', 'score': 0},
      ],
      'image': 'assets/images/bitcoin.svg',
    },
    {
      'questionText': 'Who is the current CEO of Amazon?',
      'answers': [
        {'text': 'Jeff Bezos', 'score': 0},
        {'text': 'Andy Jassy', 'score': 1},
        {'text': 'Sundar Pichai', 'score': 0},
        {'text': 'Satya Nadella', 'score': 0},
      ],
      'image': 'assets/images/andy_jassy.svg',
    },
    {
      'questionText': 'What is the term for a financial market in which prices are rising or are expected to rise?',
      'answers': [
        {'text': 'Bear Market', 'score': 0},
        {'text': 'Bull Market', 'score': 1},
        {'text': 'Stagnant Market', 'score': 0},
        {'text': 'Volatile Market', 'score': 0},
      ],
      'image': 'assets/images/bull_market.png',
    },
  ];

  void _answerQuestion(int score) {
    setState(() {
      _score += score;
      _questionIndex++;
    });
  }

  void _toggleTheme() {
    setState(() {
      _isDarkMode = !_isDarkMode;
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _score = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _isDarkMode ? ThemeData.dark() : ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Finance Trivia'),
          actions: [
            IconButton(
              icon: Icon(_isDarkMode ? Icons.wb_sunny : Icons.nights_stay),
              onPressed: _toggleTheme,
            ),
          ],
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.teal.shade100, Colors.teal.shade600],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: AnimatedSwitcher(
            duration: Duration(milliseconds: 500),
            transitionBuilder: (Widget child, Animation<double> animation) {
              return ScaleTransition(scale: animation, child: child);
            },
            child: _questionIndex < _questions.length
                ? Quiz(
                    question: _questions[_questionIndex]['questionText'] as String,
                    answers: (_questions[_questionIndex]['answers'] as List<Map<String, Object>>)
                        .map((answer) => Answer(
                              answerText: answer['text'] as String,
                              onSelect: () => _answerQuestion(answer['score'] as int),
                            ))
                        .toList(),
                    image: _questions[_questionIndex]['image'] as String,
                  )
                : Result(score: _score, onRestart: _resetQuiz),
          ),
        ),
      ),
    );
  }
}

class Quiz extends StatelessWidget {
  final String question;
  final List<Widget> answers;
  final String image;

  Quiz({required this.question, required this.answers, required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SvgPicture.asset(
            image,
            height: 150,
          ),
          SizedBox(height: 20),
          Text(
            question,
            style: Theme.of(context).textTheme.headlineLarge,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          ...answers,
        ],
      ),
    );
  }
}

class Answer extends StatelessWidget {
  final String answerText;
  final VoidCallback onSelect;

  Answer({required this.answerText, required this.onSelect});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 15),
          textStyle: TextStyle(fontSize: 18),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Text(answerText),
        onPressed: onSelect,
      ),
    );
  }
}

class Result extends StatelessWidget {
  final int score;
  final VoidCallback onRestart;

  Result({required this.score, required this.onRestart});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Your Score: $score',
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 15),
                textStyle: TextStyle(fontSize: 18),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text('Restart Quiz'),
              onPressed: onRestart,
            ),
          ],
        ),
      ),
    );
  }
}



