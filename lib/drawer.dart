import 'package:flutter/material.dart';

class DrawerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.purple.shade700,
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.fromLTRB(20.0, 40.0, 25.0, 20.0),
            child: Column(
              children: [
                Container(
                  child: Text(
                    'History',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                ListView.separated(
                  primary: false,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.pink.shade700,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      margin: EdgeInsets.only(bottom: 15.0),
                      padding: EdgeInsets.all(15.0),
                      child: Text(
                        'Coming Soon',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return VerticalDivider();
                  },
                  itemCount: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
