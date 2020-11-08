import 'package:flutter/material.dart';

// class SecondScreen extends StatelessWidget {
//   final teamAHolder;
//   final teamBHolder;

//   SecondScreen({Key key, @required this.teamAHolder, this.teamBHolder})
//       : super(key: key);

//   goBack(BuildContext context) {
//     Navigator.pop(context);
//   }
class SecondScreen extends StatefulWidget {
  SecondScreen({Key key, @required this.teamAHolder, this.teamBHolder})
      : super(key: key);

  final teamAHolder;
  final teamBHolder;

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  int _a = 0;
  int _b = 0;

  void _counterAplus() {
    setState(() {
      _a++;
    });
  }

  void _counterAminus() {
    setState(() {
      _a--;
    });
  }

  void _counterBplus() {
    setState(() {
      _b++;
    });
  }

  void _counterBminus() {
    setState(() {
      _b--;
    });
  }

  goBack(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Score Counter Board"),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: <
          Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(4),
              width: MediaQuery.of(context).size.width / 4,
              height: 60,
              alignment: Alignment.center,
              margin: EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(alignment: Alignment.center),
                  Text(
                    "Team 1",
                    style: TextStyle(color: Colors.black, fontSize: 12),
                  ),
                  Text(
                    "${widget.teamAHolder}",
                    style: TextStyle(color: Colors.black, fontSize: 24),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(4),
              width: MediaQuery.of(context).size.width / 4,
              height: 60,
              alignment: Alignment.center,
              margin: EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(alignment: Alignment.center),
                  Text(
                    "Team 1",
                    style: TextStyle(color: Colors.black, fontSize: 12),
                  ),
                  Text(
                    "${widget.teamBHolder}",
                    style: TextStyle(color: Colors.black, fontSize: 24),
                  ),
                ],
              ),
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.all(10),
          child: Row(
            children: <Widget>[
              Container(
                margin:
                    EdgeInsets.only(top: 1, right: 20, bottom: 15, left: 20),
                padding:
                    EdgeInsets.only(top: 25, right: 30, bottom: 20, left: 38),
                decoration: BoxDecoration(
                  color: Colors.indigo[50],
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                ),
                width: 125,
                height: 100,
                alignment: Alignment.center,
                child: Text(
                  "$_a",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin:
                    EdgeInsets.only(top: 1, right: 20, bottom: 15, left: 20),
                padding:
                    EdgeInsets.only(top: 25, right: 30, bottom: 20, left: 38),
                decoration: BoxDecoration(
                  color: Colors.indigo[50],
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                ),
                width: 125,
                height: 100,
                alignment: Alignment.center,
                child: Text(
                  "$_b",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          child: Row(
            children: <Widget>[
              Container(
                margin:
                    EdgeInsets.only(top: 1, right: 20, bottom: 10, left: 40),
                child: FlatButton(
                  color: Colors.indigo,
                  textColor: Colors.white,
                  padding:
                      EdgeInsets.only(top: 10, right: 40, left: 40, bottom: 10),
                  onPressed: () {
                    _counterAplus();
                  },
                  child: Text(
                    "+",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Container(
                margin:
                    EdgeInsets.only(top: 1, right: 20, bottom: 10, left: 45),
                child: FlatButton(
                  color: Colors.indigo,
                  textColor: Colors.white,
                  padding:
                      EdgeInsets.only(top: 10, right: 40, left: 40, bottom: 10),
                  onPressed: () {
                    _counterBplus();
                  },
                  child: Text(
                    "+",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          child: Row(
            children: <Widget>[
              Container(
                margin:
                    EdgeInsets.only(top: 1, right: 20, bottom: 10, left: 40),
                child: FlatButton(
                  color: Colors.indigo[200],
                  textColor: Colors.white,
                  padding:
                      EdgeInsets.only(top: 10, right: 43, left: 43, bottom: 10),
                  onPressed: () {
                    _counterAminus();
                  },
                  child: Text(
                    "-",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Container(
                margin:
                    EdgeInsets.only(top: 1, right: 20, bottom: 10, left: 45),
                child: FlatButton(
                  color: Colors.indigo[200],
                  textColor: Colors.white,
                  padding:
                      EdgeInsets.only(top: 10, right: 43, left: 43, bottom: 10),
                  onPressed: () {
                    _counterBminus();
                  },
                  child: Text(
                    "-",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        RaisedButton(
          onPressed: () => goBack(context),
          color: Colors.lightBlue,
          textColor: Colors.white,
          child: Text('Go Back'),
        ),
      ]),
    );
  }
}
