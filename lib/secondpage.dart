import 'package:flutter/material.dart';
import 'package:koreacasestudy/thirdpage.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Power sectors"),
          backgroundColor: Colors.green,
        ),
        body: Column(
          children: [
            Image(image: AssetImage('assets/images/citizens.png')),
            Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "This ambitious pioneer project is one of the largest of its kind, addressing political as well as technical challenges to effectively solve Seoul's energy problems. It encompasses citizen participation, public campaigns, adaptation of infrastructure, and a variety of other measures directed at sustainable energy production and consumption.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text("The power sector in South Korea is vertically integrated, and is controlled by the state-owned Korea Electric Power Corporation (KEPCO). The government proposed a partial privatisation of the sector in 2016 to increase competition in power generation and distribution, although the timeframe is undetermined. The majority of their energy is still obtained from fossil fuels, with <7% from renewable sources, mostly hydropower and biomass."),
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
                      MaterialPageRoute(builder: (context) => const ThirdPage()),
                    );
                  },
                  label: Text("More"),
                  icon: Icon(Icons.arrow_forward_ios, size: 15),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                  ),
                ),
                Spacer(flex: 2)
              ],
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}