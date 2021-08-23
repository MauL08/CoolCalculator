import 'package:calculator_app/drawer.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String req = '0';
  String res = '0';

  buttonControl(String value) {
    setState(() {
      if (value == 'C') {
        req = '0';
        res = '0';
      } else if (value == '<') {
        req = req.substring(0, req.length - 1);
        if (req == "") {
          req = "0";
        }
      } else if (value == '=') {
        try {
          Parser p = Parser();
          Expression exp = p.parse(req);

          ContextModel cm = ContextModel();
          res = '${exp.evaluate(EvaluationType.REAL, cm)}';
        } catch (e) {
          res = "Error";
        }
      } else {
        if (req == '0') {
          req = value;
        } else {
          req = req + value;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Scaffold(
            appBar: AppBar(
              centerTitle: true,
              backgroundColor: Colors.pink,
              elevation: 0.0,
              title: Text('Calculator'),
              leading: Builder(
                builder: (context) => ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.transparent,
                    elevation: 0.0,
                  ),
                  child: Icon(Icons.history),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                ),
              ),
            ),
            drawer: DrawerPage(),
            body: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.2, 0.8],
                  colors: [
                    Colors.pink,
                    Colors.purple,
                  ],
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    alignment: Alignment.centerRight,
                    margin: EdgeInsets.symmetric(horizontal: 30.0),
                    padding: EdgeInsets.all(30.0),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.deepPurple.shade900,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          req,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                          maxLines: 1,
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Text(
                          res,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.deepPurple.shade600,
                                padding: EdgeInsets.all(25),
                              ),
                              onPressed: () {
                                buttonControl('C');
                              },
                              child: Text(
                                'C',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.deepPurple.shade600,
                                padding: EdgeInsets.all(25),
                              ),
                              onPressed: () {
                                buttonControl('%');
                              },
                              child: Text(
                                '%',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.pink.shade700,
                                padding: EdgeInsets.all(25),
                              ),
                              onPressed: () {
                                buttonControl('<');
                              },
                              child: Text(
                                '<',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.pink.shade700,
                                padding: EdgeInsets.all(25),
                              ),
                              onPressed: () {
                                buttonControl('/');
                              },
                              child: Text(
                                '/',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.deepPurple.shade600,
                                padding: EdgeInsets.all(25),
                              ),
                              onPressed: () {
                                buttonControl("7");
                              },
                              child: Text(
                                '7',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.deepPurple.shade600,
                                padding: EdgeInsets.all(25),
                              ),
                              onPressed: () {
                                buttonControl("8");
                              },
                              child: Text(
                                '8',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.deepPurple.shade600,
                                padding: EdgeInsets.all(25),
                              ),
                              onPressed: () {
                                buttonControl("9");
                              },
                              child: Text(
                                '9',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.pink.shade700,
                                padding: EdgeInsets.all(25),
                              ),
                              onPressed: () {
                                buttonControl('*');
                              },
                              child: Text(
                                '*',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.deepPurple.shade600,
                                padding: EdgeInsets.all(25),
                              ),
                              onPressed: () {
                                buttonControl('4');
                              },
                              child: Text(
                                '4',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.deepPurple.shade600,
                                padding: EdgeInsets.all(25),
                              ),
                              onPressed: () {
                                buttonControl('5');
                              },
                              child: Text(
                                '5',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.deepPurple.shade600,
                                padding: EdgeInsets.all(25),
                              ),
                              onPressed: () {
                                buttonControl('6');
                              },
                              child: Text(
                                '6',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.pink.shade700,
                                padding: EdgeInsets.all(25),
                              ),
                              onPressed: () {
                                buttonControl('-');
                              },
                              child: Text(
                                '-',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.deepPurple.shade600,
                                padding: EdgeInsets.all(25),
                              ),
                              onPressed: () {
                                buttonControl('1');
                              },
                              child: Text(
                                '1',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.deepPurple.shade600,
                                padding: EdgeInsets.all(25),
                              ),
                              onPressed: () {
                                buttonControl('2');
                              },
                              child: Text(
                                '2',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.deepPurple.shade600,
                                padding: EdgeInsets.all(25),
                              ),
                              onPressed: () {
                                buttonControl('3');
                              },
                              child: Text(
                                '3',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.pink.shade700,
                                padding: EdgeInsets.all(25),
                              ),
                              onPressed: () {
                                buttonControl('+');
                              },
                              child: Text(
                                '+',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.transparent,
                                elevation: 0.0,
                                padding: EdgeInsets.all(25),
                              ),
                              onPressed: () {},
                              child: Text(''),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.deepPurple.shade600,
                                padding: EdgeInsets.all(25),
                              ),
                              onPressed: () {
                                buttonControl('0');
                              },
                              child: Text(
                                '0',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.transparent,
                                elevation: 0.0,
                                padding: EdgeInsets.all(25),
                              ),
                              onPressed: () {},
                              child: Text(''),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.pink.shade700,
                                padding: EdgeInsets.all(25),
                              ),
                              onPressed: () {
                                buttonControl('=');
                              },
                              child: Text(
                                '=',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
