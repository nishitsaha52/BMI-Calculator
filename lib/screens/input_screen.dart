import 'package:flutter/material.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';
import 'result_screen.dart';

class InputScreen extends StatefulWidget {
  @override
  _InputScreenState createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  final TextEditingController weightController = TextEditingController();
  final TextEditingController heightController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  String gender = 'Male'; // Default gender

  void _calculateBMI(BuildContext context) {
    final weight = weightController.text;
    final height = heightController.text;
    final age = ageController.text;

    final weightValue = double.tryParse(weight) ?? 0;
    final heightValue = double.tryParse(height) ?? 0;
    final ageValue = int.tryParse(age) ?? 0;

    if (weightValue > 0 && heightValue > 0) {
      final heightInMeters = heightValue / 100; // Convert cm to meters
      final bmi = weightValue / (heightInMeters * heightInMeters);

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ResultScreen(
            bmi: bmi,
            height: heightValue,
          ),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please enter valid values')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200], // Background color for the screen
      appBar: AppBar(
        title: Text('BMI Calculator'),
        backgroundColor: Colors.teal, // App bar color
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    CustomTextField(
                      controller: weightController,
                      label: 'Enter your weight (kg)',
                      keyboardType: TextInputType.number,
                      icon: Icons.fitness_center,
                    ),
                    SizedBox(height: 20.0),
                    CustomTextField(
                      controller: heightController,
                      label: 'Enter your height (cm)',
                      keyboardType: TextInputType.number,
                      icon: Icons.height,
                    ),
                    SizedBox(height: 20.0),
                    CustomTextField(
                      controller: ageController,
                      label: 'Enter your age',
                      keyboardType: TextInputType.number,
                      icon: Icons.cake,
                    ),
                    SizedBox(height: 20.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('Gender: ', style: TextStyle(fontSize: 16)),
                        Radio<String>(
                          value: 'Male',
                          groupValue: gender,
                          onChanged: (value) {
                            setState(() {
                              gender = value!;
                            });
                          },
                        ),
                        Text('Male'),
                        Radio<String>(
                          value: 'Female',
                          groupValue: gender,
                          onChanged: (value) {
                            setState(() {
                              gender = value!;
                            });
                          },
                        ),
                        Text('Female'),
                      ],
                    ),
                    SizedBox(height: 30.0),
                    CustomButton(
                      text: 'Calculate BMI',
                      onPressed: () => _calculateBMI(context),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
