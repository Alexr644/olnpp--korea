import 'package:flutter/material.dart';
import 'package:koreacasestudy/quiz1.dart';

class FourthPage extends StatelessWidget {
  const FourthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Contribution"),
          backgroundColor: Colors.green,
        ),
        body: Column(
          children: [
            Image(image: AssetImage('assets/images/seoul.jpg')),
            Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                  "At the C40 Cities Summit, Seoul expressed support for the Global Green New Deal, which was selected as a key agenda topic for C40, and participated in the air quality improvement declaration and planetary health diet declaration in agreement to make leading efforts to reduce of particulate matter and improve healthy diets."),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "As of today, this project is still ongoing, and many people from around the world are looking forward to contribute to pollution reduction in Seoul. The result is incredible, since citizens started actively participating in energy conservation efforts.",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Spacer(),
            Row(
              children: [
                Spacer(flex: 2),
                OutlinedButton.icon(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  label: Text("Back"),
                  icon: Icon(Icons.arrow_back_ios, size: 15),
                  style: OutlinedButton.styleFrom(
                    primary: Colors.green,
                  ),
                ),
                Spacer(),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Quiz1()),
                    );
                  },
                  label: Text("Next"),
                  icon: Icon(Icons.arrow_forward_ios, size: 15),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                  ),
                ),
                Spacer(flex: 2)
              ],
            ),
            Spacer()
          ],
        ),
      ),
    );
  }
}
