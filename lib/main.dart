import 'package:flutter/material.dart';
import 'package:project_flutter/page1.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('Score Counter')),
            body: Center(child: HomeScreen())));
  }
}

class HomeScreen extends StatefulWidget {
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  final teamA = TextEditingController();
  final teamB = TextEditingController();

  getItemAndNavigate(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => SecondScreen(
                teamAHolder: teamA.text, teamBHolder: teamB.text)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
              width: 280,
              padding: EdgeInsets.all(10.0),
              child: TextField(
                controller: teamA,
                autocorrect: true,
                decoration: InputDecoration(
                  labelText: 'Team 1',
                  hintText: 'Enter Team 1 Here',
                  border: OutlineInputBorder(),
                ),
              )),
          Container(
              width: 280,
              padding: EdgeInsets.all(10.0),
              child: TextField(
                controller: teamB,
                autocorrect: true,
                decoration: InputDecoration(
                  labelText: 'Team 2',
                  hintText: 'Enter Team 2 Here',
                  border: OutlineInputBorder(),
                ),
              )),
          RaisedButton(
            onPressed: () => getItemAndNavigate(context),
            color: Colors.blue,
            textColor: Colors.white,
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Text('Start'),
          ),
        ],
      ),
    ));
  }
}
