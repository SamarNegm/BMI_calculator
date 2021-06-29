import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ibm_calculator/models/user_data.dart';

class Result extends StatelessWidget {
  static const routeName = '/result';
  const Result({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    UserData user_data = ModalRoute.of(context).settings.arguments as UserData;
    final double bmi = user_data.claculateBmi();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff121223),
        title: Text('BMI Result'),
      ),
      body: Container(
        color: Color(0xff121223),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(),
              SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: Card(
                    shadowColor: Color(0xffcf1b4b),
                    elevation: 5.5,
                    color: Color(0xff1b1a2d),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text(
                            'YOUR BMI IS: ' + bmi.toStringAsFixed(1),
                            style: TextStyle(
                                color: Color(0xffcf1b4b),
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        if (bmi < 18.5)
                          Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: Text(
                              'You are Underweight ',
                              style: TextStyle(
                                color: Color(0xffcf1b4b),
                                fontSize: 20,
                              ),
                            ),
                          ),
                        Padding(
                          padding: const EdgeInsets.only(
                              bottom: 20, left: 20, right: 20),
                          child: Text(
                            'Gender: ' + (user_data.male ? 'Male' : 'Female'),
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              bottom: 20, left: 20, right: 20),
                          child: Text(
                            'Height: ' + user_data.height.toString(),
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              bottom: 20, left: 20, right: 20),
                          child: Text(
                            'Weight: ' + user_data.weight.toString(),
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              bottom: 20, left: 20, right: 20),
                          child: Text(
                            'Age: ' + user_data.age.toString(),
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                child: Column(
                  children: [
                    if (bmi < 18.5)
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Text(
                          'You are Underweight ',
                          style: TextStyle(
                            color: Color(0xffcf1b4b),
                            fontSize: 20,
                          ),
                        ),
                      ),
                    if (bmi >= 18.5 && bmi < 25)
                      Padding(
                        padding: const EdgeInsets.only(
                            bottom: 20, left: 20, right: 20),
                        child: Text(
                          'You are Normal or Healthy Weight ',
                          style: TextStyle(
                            color: Color(0xffcf1b4b),
                            fontSize: 20,
                          ),
                        ),
                      ),
                    if (bmi >= 25 && bmi < 30)
                      Padding(
                        padding: const EdgeInsets.only(
                            bottom: 20, left: 20, right: 20),
                        child: Text(
                          'You are Overweight',
                          style: TextStyle(
                            color: Color(0xffcf1b4b),
                            fontSize: 20,
                          ),
                        ),
                      ),
                    if (bmi >= 30)
                      Padding(
                        padding: const EdgeInsets.only(
                            bottom: 20, left: 20, right: 20),
                        child: Text(
                          'You are Obese',
                          style: TextStyle(
                            color: Color(0xffcf1b4b),
                            fontSize: 20,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
