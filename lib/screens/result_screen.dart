import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final double bmi;
  final double height;

  ResultScreen({required this.bmi, required this.height});

  // Function to determine BMI classification text
  String getResultText() {
    if (bmi < 18.5) {
      return 'Underweight';
    } else if (bmi < 24.0) {
      return 'Normal';
    } else if (bmi < 28.0) {
      return 'Overweight';
    } else {
      return 'Obese';
    }
  }

  // Function to determine BMI classification color
  Color getResultColor() {
    if (bmi < 18.5) {
      return Colors.blue;
    } else if (bmi < 24.0) {
      return Colors.green;
    } else if (bmi < 28.0) {
      return Colors.yellow;
    } else {
      return Colors.orange;
    }
  }

  @override
  Widget build(BuildContext context) {
    String resultText = getResultText();
    Color resultColor = getResultColor();
    double heightInMeters = height / 100;
    double minWeight = 18.5 * (heightInMeters * heightInMeters); // Minimum suggested weight
    double maxWeight = 24.0 * (heightInMeters * heightInMeters); // Maximum suggested weight

    return Scaffold(
      backgroundColor: Colors.grey[100], // Background color for the screen
      appBar: AppBar(
        title: Text('Your BMI Result'),
        backgroundColor: Colors.teal, // App bar color
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Display BMI value
              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Text(
                        bmi.toStringAsFixed(1),
                        style: TextStyle(
                          fontSize: 64.0, 
                          fontWeight: FontWeight.bold,
                          color: resultColor,
                        ),
                      ),
                      Text(
                        'Body Mass Index',
                        style: TextStyle(fontSize: 18.0),
                      ),
                      SizedBox(height: 20.0),
                      // Display BMI classification
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: resultColor.withOpacity(0.2),
                        ),
                        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                        child: Text(
                          resultText,
                          style: TextStyle(fontSize: 24.0, color: resultColor),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Divider(),
              SizedBox(height: 10.0),
              Text(
                'Analysis',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10.0),
              // Display height and suggested weight range
              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Height (cm)', style: TextStyle(fontSize: 16.0)),
                          Text(height.toStringAsFixed(1), style: TextStyle(fontSize: 16.0)),
                        ],
                      ),
                      SizedBox(height: 10.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Suggested weight (kg)', style: TextStyle(fontSize: 16.0)),
                          Text('${minWeight.toStringAsFixed(1)} ~ ${maxWeight.toStringAsFixed(1)}', style: TextStyle(fontSize: 16.0)),
                        ],
                      ),
                      SizedBox(height: 10.0),
                      // Additional advice based on BMI
                      Text(
                        _getAdvice(),
                        style: TextStyle(fontSize: 16.0, fontStyle: FontStyle.italic),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Function to get advice based on BMI
  String _getAdvice() {
    if (bmi < 18.5) {
      return 'You are underweight. It’s important to ensure you are eating a balanced diet and may consider consulting a healthcare provider.';
    } else if (bmi < 24.0) {
      return 'You have a normal weight. Keep up the good work by maintaining a balanced diet and regular exercise.';
    } else if (bmi < 28.0) {
      return 'You are overweight. Consider focusing on a balanced diet and increasing physical activity.';
    } else {
      return 'You are obese. It’s important to consult with a healthcare provider for personalized advice and support.';
    }
  }
}
