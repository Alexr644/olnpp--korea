import 'package:flutter/material.dart';
import 'package:koreacasestudy/secondpage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(
          image: AssetImage('assets/images/solar_power.png'),
        ),
        Spacer(),
        Text(
          "CASE STUDY",
          style: TextStyle(
            color: Colors.deepOrange,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            fontSize: 20,
          ),
        ),
        Text(
          "One Less Nuclear Power Plant",
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            "This initiative aims at reducing energy consumption and increasing renewable energy production to compensate for one nuclear power plant.",
            textAlign: TextAlign.left,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            "Why launch the initiative? Seoul’s power consumption accounts for 10.3% of the national total. However, the city’s power self-sufficiency rate is a meager figure of 3.0%, and only 1.6% of energy consumed in the city comes from new and renewable sources. Furthermore, the continued rise of global oil prices makes a new paradigm of energy policy even more necessary. Seoul thus has set a goal of accomplishing 8% of power self-sufficiency by 2014, and 20% by 2020.",
            textAlign: TextAlign.left,
          ),
        ),
        Spacer(),
        ElevatedButton.icon(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SecondPage()),
            );
          },
          label: Text("More"),
          icon: Icon(Icons.arrow_forward_ios, size: 15),
          style: ElevatedButton.styleFrom(
            primary: Colors.green,
          ),
        ),
        Spacer()
      ],
    );
  }
}
