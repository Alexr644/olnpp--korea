import 'package:flutter/material.dart';
import 'package:koreacasestudy/firstpage.dart';
import 'package:koreacasestudy/main.dart';
import 'package:koreacasestudy/quiz3.dart';

class End extends StatelessWidget {
  const End({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Thank you!'),
          backgroundColor: Colors.green,
        ),
        body: Column(
          children: [
            Spacer(flex: 2),
            Text(
              'If you got all questions right, you are ready to take care of the power!',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 10),
            ),
            Text(
              'If you got 2 questions right, you at least know that the current environment is in danger.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 10),
            ),
            Text(
              'If you got 1 or no questions right, Idk what should I say...',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 10),
            ),
            Spacer(flex: 2),
            Text(
              'Thank you for downloading our app. We hope we encouraged you to take measures of sustenability and precaution against the nuclear power. Our goal is to make Earth a better and a cleaner place.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.lightGreen,
              ),
            ),
            Spacer(),
            Text(
              'All citizens in Seoul can contribute to the One Less Nuclear Power Plant project by supervising their energy usage and relying less on power plants.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.lightGreen,
              ),
            ),
            Spacer(),
            Text(
              'You can see the entire project’s story again by pressing the Home button below.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.lightGreen,
              ),
            ),
            Spacer(flex: 2),
            OutlinedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const CaseApp()),
                  );
                },
                icon: Icon(Icons.home_rounded),
                label: Text('Home'),
              style: OutlinedButton.styleFrom(
                primary: Colors.green,
              ),
            ),
            Spacer(flex: 2)
          ],
        ),
      ),
    );
  }
}
