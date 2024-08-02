# BMI Calculator 🎯

Welcome to the BMI Calculator app! This Flutter-powered app helps you easily compute your Body Mass Index (BMI) and provides insightful information about your body weight status. 

## 🏆 Features

- **Effortless BMI Calculation:** Input your weight and height to get your BMI in a snap.
- **Personalized Feedback:** Discover whether you're underweight, normal weight, overweight, or obese.
- **Smart Suggestions:** Get suggested weight ranges tailored to your height.
- **Modern Design:** Enjoy a sleek, responsive UI with intuitive controls for gender selection.

## 📸 Screenshots

Here’s how the BMI Calculator app looks in action:

### Home Screen

![Home Screen](assets/screenshots/home_screen.png)

### Result Screen

![Result Screen](assets/screenshots/result_screen.png)

## 🚀 Getting Started

### Prerequisites

- **Flutter:** Ensure you have Flutter installed. Check the [Flutter installation guide](https://flutter.dev/docs/get-started/install) for details.

### Clone the Repository

```bash
git clone https://github.com/your-username/bmi_calculator.git
cd bmi_calculator
```

### Install Dependencies

```bash
flutter pub get
```

### Run the App

For mobile devices or emulators:

```bash
flutter run
```

For a web experience:

```bash
flutter run -d chrome
```

## 📁 Folder Structure

Here's a quick overview of the project's structure:

- **`lib/main.dart`**: The heart of the app. Sets up the theme and initial screen.
- **`lib/screens/input_screen.dart`**: The main screen where users enter their weight, height, and age.
- **`lib/screens/result_screen.dart`**: Displays the BMI result, classification, and weight recommendations.
- **`lib/widgets/custom_button.dart`**: A stylish, custom button with a bold design.
- **`lib/widgets/custom_text_field.dart`**: Sleek, rounded text fields for a polished look.
- **`lib/widgets/gender_selector.dart`**: An interactive toggle for gender selection with a modern touch.

## 🧩 Code Highlights

### Main Entry Point

```dart
void main() {
  runApp(BMICalculatorApp());
}
```

### BMICalculatorApp

Configures the app’s theme and sets the `InputScreen` as the home screen.

### InputScreen

Users input their weight, height, and age, calculate their BMI, and navigate to the `ResultScreen` with a tap of the "Calculate BMI" button.

### ResultScreen

Showcases the calculated BMI, its classification, and provides weight suggestions based on height.

### Custom Widgets

- **`CustomTextField`**: Elegant text fields with rounded corners and icons for a seamless input experience.
- **`CustomButton`**: A bold, attractive button designed for an engaging user experience.
- **`GenderSelector`**: A modern toggle button design for easy gender selection.

## 🌟 Contributing

We welcome contributions! If you have ideas, improvements, or bug fixes, please fork the repo and submit a pull request, or open an issue.

## 📜 License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

---
