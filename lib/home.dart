import 'package:flutter/material.dart';
import 'package:ibm_calculator/models/user_data.dart';
import 'package:ibm_calculator/result.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double Height = 160;
  bool male = false;

  int weight = 60;

  int age = 30;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff121223),
        title: Center(child: Text('BMI Calculator')),
      ),
      body: SafeArea(
        child: Container(
          color: Color(0xff121223),
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(children: [
                    Expanded(
                        child: GestureDetector(
                      onTap: () {
                        setState(() {
                          male = false;
                        });
                      },
                      child: Card(
                        elevation: 10,
                        child: Container(
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 60,
                                  width: 60,
                                  child: Image(
                                    image: AssetImage('assets/images/f.png'),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Female',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                              color:
                                  male ? Color(0xff1b1a2d) : Color(0xffcf1b4b),
                              // Color(0xff1b1a2d),
                              borderRadius: BorderRadius.circular(20)),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    )),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                        child: GestureDetector(
                      onTap: () {
                        setState(() {
                          male = true;
                        });
                      },
                      child: Card(
                        elevation: 10,
                        child: Container(
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 60,
                                  width: 60,
                                  child: Image(
                                    image: AssetImage(
                                        'assets/images/Male-icon.png'),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Male',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                              color:
                                  male ? Color(0xffcf1b4b) : Color(0xff1b1a2d),
                              borderRadius: BorderRadius.circular(20)),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    )),
                  ]),
                ),
              ),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  width: double.infinity,
                  child: Card(
                    color: Color(0xff1b1a2d),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Height',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              Height.toString(),
                              style:
                                  TextStyle(color: Colors.white, fontSize: 30),
                            ),
                            Text(
                              'cm',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          ],
                        ),
                        Slider(
                          inactiveColor: Colors.black12,
                          activeColor: Color(0xffcf1b4b),
                          value: Height.toDouble(),
                          max: 250,
                          min: 20,
                          onChanged: (value) {
                            setState(() {
                              Height = value.floorToDouble();
                            });
                          },
                        )
                      ],
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
              )),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(children: [
                    Expanded(
                        child: Card(
                      color: Color(0xff1b1a2d),
                      elevation: 10,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Weight',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            Text(
                              weight.toString(),
                              style:
                                  TextStyle(color: Colors.white, fontSize: 30),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  child: Container(
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(0xff444455)),
                                    child: Icon(Icons.add, color: Colors.white),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      if (weight > 0) weight--;
                                    });
                                  },
                                  child: Container(
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(0xff444455)),
                                    child:
                                        Icon(Icons.remove, color: Colors.white),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    )),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                        child: Card(
                      color: Color(0xff1b1a2d),
                      elevation: 10,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Age',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            Text(
                              age.toString(),
                              style:
                                  TextStyle(color: Colors.white, fontSize: 30),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  child: Container(
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(0xff444455)),
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      if (age > 0) age--;
                                    });
                                  },
                                  child: Container(
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(0xff444455)),
                                    child: Icon(
                                      Icons.remove,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    )),
                  ]),
                ),
              ),
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Color(0xffcf1b4b))),
                  onPressed: () {
                    print('hiiiii');
                    Navigator.of(context).pushNamed(Result.routeName,
                        arguments: UserData(
                            age: age,
                            height: Height,
                            male: male,
                            weight: weight));
                  },
                  child: Container(
                    height: 60,
                    color: Color(0xffcf1b4b),
                    width: double.infinity,
                    child: Center(child: Text('Calculate')),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
