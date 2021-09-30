import 'data.dart';
import 'package:flutter/material.dart';

class DrawerPage extends StatelessWidget {
  List req = historyReq;
  List res = historyRes;

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
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            req[index],
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            '-> ${res[index]}',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return VerticalDivider();
                  },
                  itemCount: req.length,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.pink.shade900,
                    padding: EdgeInsets.all(15),
                  ),
                  onPressed: () async {
                    req.clear();
                    res.clear();
                  },
                  child: Text('Reset'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
