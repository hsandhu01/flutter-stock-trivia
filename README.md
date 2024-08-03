# Finance Trivia App

Finance Trivia is a Flutter application designed to test your knowledge of finance-related topics. The app presents a series of trivia questions with multiple-choice answers, along with relevant images.

## Features

- 25 finance-related trivia questions
- Multiple-choice answers
- Customizable theme with light and dark modes
- Images for each question to enhance visual appeal
- Score tracking and quiz restart functionality

## Getting Started

### Prerequisites

- Flutter SDK: [Install Flutter](https://flutter.dev/docs/get-started/install)
- Dart SDK: Comes with the Flutter SDK

### Installation

1. Clone the repository:

```sh
git clone https://github.com/yourusername/finance_trivia.git
cd finance_trivia
```

2. Install the dependencies:

```sh
flutter pub get
```

3. Run the app:

```sh
flutter run
```

## File Structure

```plaintext
finance_trivia/
├── assets/
│   └── images/
│       ├── stock_exchange.png
│       ├── benjamin_graham.png
│       ├── bear_market.png
│       ├── apple_logo.png
│       ├── etf_concept.png
│       ├── elon_musk.png
│       ├── nike_logo.png
│       ├── ipo_concept.png
│       ├── profit_margin.png
│       ├── mutual_fund.png
│       ├── apple_logo.png
│       ├── expansion.png
│       ├── amazon_logo.png
│       ├── pe_ratio.png
│       ├── alan_greenspan.png
│       ├── stock.png
│       ├── gdp.png
│       ├── pb_ratio.png
│       ├── warren_buffett.png
│       ├── roe.png
│       ├── bmw_logo.png
│       ├── hedge_fund.png
│       ├── bitcoin.png
│       ├── andy_jassy.png
│       ├── bull_market.png
├── lib/
│   ├── main.dart
├── pubspec.yaml
├── README.md
```

## Usage

Upon launching the app, you will see the first question along with four answer options. Select an answer to proceed to the next question. The app keeps track of your score, and at the end of the quiz, you will see your total score. You can restart the quiz by clicking the "Restart Quiz" button.

## Customization

You can easily customize the quiz questions, answers, and images by modifying the `_questions` list in `main.dart`. Each question should have a corresponding image in the `assets/images` directory.

## Contributions

Contributions are welcome! Please fork the repository and submit a pull request for any improvements or bug fixes.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Contact

If you have any questions or suggestions, feel free to reach out to me@harrysandhu.tech.

Enjoy the quiz!