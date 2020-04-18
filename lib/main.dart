import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Input Widgets Tryouts'),
        ),
        body: Container(
          alignment: Alignment.center,
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: InputWidgets(),
          ),
        ),
      ),
    );
  }
}

class ManagePeople extends StatelessWidget {
  List<Map> fetchPeople(){
    return [
      {"first":"Tony", "last":"Stark"},
      {"first":"Steve", "last":"Rogers"},
      {"first":"Red", "last":"Skull"},
      {"first":"Peter", "last":"Parker"},
      {"first":"Otto", "last":"Octavious"},
      {"first":"Norman", "last":"Osborn"},
      {"first":"Matt", "last":"Murdock"},
      {"first":"Wilson", "last":"Fisk"},
      {"first":"Natasha", "last":"Romanoff"},
      {"first":"Daisy", "last":"Johnson"},
      {"first":"Pepper", "last":"Potts"},
      {"first":"Bruce", "last":"Banner"},
      {"first":"Zebdeiah", "last":"Killgrave"},
    ];
  }
  @override
  Widget build(BuildContext context) {
    var _peopleObjects = fetchPeople();
    return ListView(
      children: _peopleObjects.map((person) =>
          GestureDetector(child: Person(person:person))).toList(),
    );

  }

}

