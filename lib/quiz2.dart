import 'package:flutter/material.dart';
import 'package:koreacasestudy/quiz1.dart';
import 'package:koreacasestudy/quiz3.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Quiz2 extends StatelessWidget {
  const Quiz2({Key? key}) : super(key: key);

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
                              content: Text('This is a general question. It doesn’t relate to the information you seen previously. It only asks you about your general perspective.'),
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
              '2. Answer the following question:',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
            Spacer(),
            Text(
              "Why is reducing power problems important?",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 18
              ),
            ),
            Spacer(),
            RadioBtn2(),
            Spacer(),
            Row(
              children: [
                Spacer(),
                OutlinedButton(
                  onPressed: () async {
                    if (answer == Answers2.ab) {
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
                      MaterialPageRoute(builder: (context) => const Quiz3()),
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

enum Answers2 {ab, bb, cb}

class RadioBtn2 extends StatefulWidget {
  const RadioBtn2({Key? key}) : super(key: key);

  @override
  State<RadioBtn2> createState() => _RadioBtn2State();
}

Answers2? answer = Answers2.bb;
class _RadioBtn2State extends State<RadioBtn2> {
  Answers2? answer = Answers2.ab;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: const Text('Because it was our initiative: no one ever assumed the bad things pollution could do.'),
          leading: Radio<Answers2>(
            value: Answers2.ab,
            groupValue: answer,
            activeColor: Color(0xFF4CAF50),
            onChanged: (Answers2? value) {
              setState(() {
                answer = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Because pollution can kill the planet in the upcoming years.'),
          leading: Radio<Answers2>(
            value: Answers2.bb,
            groupValue: answer,
            activeColor: Color(0xFF4CAF50),
            onChanged: (Answers2? value) {
              setState(() {
                answer = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Because nuclear power slowly kills plants and nature, but not humans.'),
          leading: Radio<Answers2>(
            value: Answers2.cb,
            groupValue: answer,
            activeColor: Color(0xFF4CAF50),
            onChanged: (Answers2? value) {
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
