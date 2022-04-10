import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyFirstApp());
}

class MyFirstApp extends StatefulWidget {
  @override
  State<MyFirstApp> createState() => _MyFirstAppState();
}

class _MyFirstAppState extends State<MyFirstApp> {
  void _answerQuestion() {
    setState(() {
      _questionINdex = _questionINdex + 1;
    });
    print("Pressed Button!");
  }

  var _questionINdex = 0;

  @override
  Widget build(BuildContext context) {
    List<String> questions = [
      'What\'s your favorite hero?',
      'What\'s your favourite anime?',
      'Question 3',
      'Question 4',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("List"),
        ),
        body: Column(children: [
          Text(questions[_questionINdex]),
          ElevatedButton(
            onPressed: _answerQuestion,
            child: Text('Answer1'),
          ),
          ElevatedButton(
            onPressed: _answerQuestion,
            child: Text('Answer2'),
          ),
        ]),
      ),
    ); //this is a widget which is a combination of all the widgets you are gonna make, and this is gonna be returned by build method
  }
}

// class Todo extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         theme: ThemeData(
//           textTheme: GoogleFonts.nunitoSansTextTheme(
//             Theme.of(context).textTheme,
//           ),
//         ),
//         home: Scaffold(
//           appBar: AppBar(
//             title: Text("Counting App"),
//           ),
//           body: Container(
//             child: Center(
//               child: Text(
//                 "hello world!!!!",
//                 style: TextStyle(fontSize: 50.0),
//               ),
//             ),
//           ),
//         ));
//   }
// }
