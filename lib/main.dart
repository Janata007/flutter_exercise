import 'package:flutter/material.dart';
import 'package:rainlette/clothes_answer.dart';
import './clothes_question.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return MyAppState();
  }
}

class MyAppState extends State<MyApp>{
  void _iWasTapped() {
    setState(() {
      _questionIndex+=1;
    });
    print('I was tapped');
  }
  var questions = [
    {'question':"Select hat", 'answer':['Baseball Cap', 'Bike helmet', 'Beret']},
    {'question':"Select jacket", 'answer':['Leather', 'Puffer', 'Bomber']},
    {'question':"Select pants", 'answer':['Skinny jeans', 'Baggy overalls', 'Shorts']},
  ];
  var _questionIndex = 0;


  @override
  Widget build(BuildContext context) {
    return MaterialApp(title:'Hello World',
    home: Scaffold(
      appBar: AppBar(title: Text("Hello world")),
      body: Column(
        children: [
          ClothesQuestion(questions[_questionIndex]['question'].toString()),
          ...(questions[_questionIndex]['answer'] as List<String>).map((answer) {
            return ClothesAnswer(_iWasTapped, answer);
          }),
        ],
      ),
    ),);
  }

}