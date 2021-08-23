import 'package:calculator_app/drawer.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int equation = 0;
  int num1 = 0;
  int history = 0;

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
                      children: [
                        Text(
                          history.toString(),
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Text(
                          equation.toString(),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                          ),
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
                              onPressed: () {},
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
                              onPressed: () {},
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
                              onPressed: () {},
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
                              onPressed: () {},
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
                              onPressed: () {},
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
                              onPressed: () {},
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
                              onPressed: () {},
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
                              onPressed: () {},
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
                              onPressed: () {},
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
                              onPressed: () {},
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
                              onPressed: () {},
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
                              onPressed: () {},
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
                              onPressed: () {},
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
                              onPressed: () {},
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
                              onPressed: () {},
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
                              onPressed: () {},
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
                              onPressed: () {},
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
                              onPressed: () {},
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
