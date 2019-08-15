import 'package:flutter/material.dart';
// import 'dart:ui';

void main() => runApp(FoodRecipeApp());

class FoodRecipeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

Color HexToColor(String code) {
  return Color(int.parse(code.substring(0, 6), radix: 16) + 0xFF000000);
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              height: 250,
              color: HexToColor('fff5ea'),
            ),
            Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(15, 35, 15, 10),
                  child: Material(
                    elevation: 10,
                    borderRadius: BorderRadius.circular(25),
                    child: TextFormField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.search, color: Colors.black),
                            contentPadding: EdgeInsets.only(left: 15, top: 15),
                            hintText: 'Search for recipes and channels',
                            hintStyle: TextStyle(color: Colors.grey))),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Container(
                    padding: EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                        border: Border(
                            left: BorderSide(
                                color: Colors.orange,
                                style: BorderStyle.solid,
                                width: 3))),
                    child: Row(
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'POPULAR RECIPES',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Timesroman',
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'THIS WEEK',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Timesroman',
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 15),
                ),
                Container(
                  padding: EdgeInsets.only(top: 15, left: 15),
                  height: 125,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      _foodCard(),
                      SizedBox(width: 10),
                      _foodCard(),
                      SizedBox(width: 10),
                      _foodCard(),
                      SizedBox(width: 10),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
        SizedBox(height: 15),
        Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.only(left: 15),
          child: Text(
            'August 13',
            style: TextStyle(
                fontFamily: 'Quicksand', color: Colors.grey, fontSize: 14),
          ),
        ),
        Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.only(left: 15),
          child: Text(
            'Today',
            style: TextStyle(
                fontFamily: 'Timesroman',
                fontWeight: FontWeight.bold,
                fontSize: 30),
          ),
        ),
        SizedBox(height: 10),
        Stack(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 12, right: 12),
              child: Container(
                height: 275,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        image: AssetImage('assets/images/lunch.jpg'),
                        fit: BoxFit.cover)),
                child: Container(
                  decoration:
                      BoxDecoration(color: Colors.white.withOpacity(0.0)),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 150, left: 60),
              child: Column(
                children: <Widget>[
                  Text(
                    'BEST OF',
                    style: TextStyle(
                        fontFamily: 'Timesroman',
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.white),
                  ),
                  Text(
                    'THE DAY',
                    style: TextStyle(
                        fontFamily: 'Timesroman',
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 3,
                    width: 50,
                    color: Colors.orange,
                  )
                ],
              ),
            )
          ],
        )
      ],
    ));
  }

  Widget _foodCard() {
    return Container(
      height: 125,
      width: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: Row(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                    image: AssetImage('assets/images/burrito-chicken.jpg'))),
            height: 125,
            width: 100,
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Chicken Burrito',
                style: TextStyle(fontFamily: 'Quicksand'),
              ),
              Text(
                'with limes',
                style: TextStyle(fontFamily: 'Quicksand'),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 2,
                width: 75,
                color: Colors.orange,
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.5),
                        image: DecorationImage(
                            image: AssetImage('assets/images/nishant.jpg'))),
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Nishant Aneja',
                    style: TextStyle(fontFamily: 'Quicksand'),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
