import 'package:flutter/material.dart';
import 'package:koreacasestudy/quiz2.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Quiz1 extends StatelessWidget {
  const Quiz1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Quiz"),
          backgroundColor: Colors.green,
          actions: [
            PopupMenuButton(
              icon: Icon(Icons.more_vert),
              itemBuilder: (BuildContext context) => <PopupMenuEntry> [
                PopupMenuItem(
                  child: Text('Hint'),
                  onTap: () {
                    Future.delayed(
                      const Duration(seconds: 0),
                        () => showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: Text('Hint'),
                              content: Text('The project’s name represents the entire purpose. Logically think that nuclear power plants are dangerous for the environment and people’s health.'),
                              actions: [
                                TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text(
                                      'OK',
                                      style: TextStyle(color: Colors.green),
                                    )
                                ),
                              ],
                            )
                        )
                    );
                  },
                )
              ],
            )
          ],
        ),
        body: Column(
          children: [
            Spacer(),
            Text(
              '1. Answer the following question:',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
            Spacer(),
            Text(
              "What is this project for?",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18
              ),
            ),
            Spacer(),
            RadioBtn1(),
            Spacer(),
            Row(
              children: [
                Spacer(),
                OutlinedButton(
                  onPressed: () async {
                    if (answer == Answers1.aa) {
                      final sharedPrefs = await SharedPreferences.getInstance();
                      int score = await sharedPrefs.getInt('score')!;
                      score++;
                      sharedPrefs.setInt('score', score);
                    }
                  },
                  child: Text("Check"),
                  style: OutlinedButton.styleFrom(
                    primary: Colors.green,
                  ),
                ),
                Spacer(),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Quiz2()),
                    );
                  },
                  label: Text("Next"),
                  icon: Icon(Icons.arrow_forward_ios, size: 15),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                  ),
                ),
                Spacer()
              ],
            ),
            Spacer()
          ],
        ),
      ),
    );
  }
}

enum Answers1 {aa, ba, ca}

class RadioBtn1 extends StatefulWidget {
  const RadioBtn1({Key? key}) : super(key: key);

  @override
  State<RadioBtn1> createState() => _RadioBtn1State();
}
Answers1? answer = Answers1.aa;
class _RadioBtn1State extends State<RadioBtn1> {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: const Text('To reduce energy consumption and increase renewable energy production.'),
          leading: Radio<Answers1>(
            value: Answers1.aa,
            groupValue: answer,
            activeColor: Color(0xFF4CAF50),
            onChanged: (Answers1? value) {
              setState(() {

                answer = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('To help keep human rights equal in Seoul.'),
          leading: Radio<Answers1>(
            value: Answers1.ba,
            groupValue: answer,
            activeColor: Color(0xFF4CAF50),
            onChanged: (Answers1? value) {
              setState(() {
                answer = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('It doesn’t have a reasonable point.'),
          leading: Radio<Answers1>(
            value: Answers1.ca,
            groupValue: answer,
            activeColor: Color(0xFF4CAF50),
            onChanged: (Answers1? value) {
              setState(() {
                answer = value;
              });
            },
          ),
        )
      ],
    );
  }
}
