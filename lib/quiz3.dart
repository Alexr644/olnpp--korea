import 'package:flutter/material.dart';
import 'package:koreacasestudy/end.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Quiz3 extends StatelessWidget {
  const Quiz3({Key? key}) : super(key: key);

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
                              content: Text('This is a question you were being asked since kindergarten. You don’t need a hint for this.'),
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
              '3. Answer the following question:',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
            Spacer(),
            Text(
              "Since it’s hard to travel to South Korea as of rn, how can you contribute to save your energy?",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 18
              ),
            ),
            Spacer(),
            RadioBtn3(),
            Spacer(),
            Row(
              children: [
                Spacer(),
                OutlinedButton(
                  onPressed: () async {
                    if (answer == Answers3.ac) {
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
                      MaterialPageRoute(builder: (context) => const End()),
                    );
                  },
                  label: Text("Finish"),
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

enum Answers3 {ac, bc, cc}

class RadioBtn3 extends StatefulWidget {
  const RadioBtn3({Key? key}) : super(key: key);

  @override
  State<RadioBtn3> createState() => _RadioBtn3State();
}

Answers3? answer = Answers3.ac;
class _RadioBtn3State extends State<RadioBtn3> {
  Answers3? answer = Answers3.ac;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: const Text('Turn off power during Earth Hour and/or whenever it’s possible.'),
          leading: Radio<Answers3>(
            value: Answers3.ac,
            groupValue: answer,
            activeColor: Color(0xFF4CAF50),
            onChanged: (Answers3? value) {
              setState(() {
                answer = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Cook lighter recipes, use low light and/or keep windows open more often.'),
          leading: Radio<Answers3>(
            value: Answers3.bc,
            groupValue: answer,
            activeColor: Color(0xFF4CAF50),
            onChanged: (Answers3? value) {
              setState(() {
                answer = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Do nothing, being sure that people won’t actually care about savings.'),
          leading: Radio<Answers3>(
            value: Answers3.cc,
            groupValue: answer,
            activeColor: Color(0xFF4CAF50),
            onChanged: (Answers3? value) {
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
