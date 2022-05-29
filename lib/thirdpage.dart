import 'package:flutter/material.dart';
import 'package:koreacasestudy/fourthpage.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Investment/Awards"),
          backgroundColor: Colors.green,
        ),
        body: Column(
          children: [
            Image(image: AssetImage('assets/images/earth_hour.jpg')),
            Spacer(),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                'Seoul has been awarded two C40 Cities awards for <<Solar City Seoul>> in 2014 and 2019. By 2022, Solar City Seoul proposes to supply one million households with mini solar power stations, install solar power in every single public site where installation is possible, and promote the solar power industry to increase the total solar power generation to 1GW.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text("The One Less Nuclear Power Plant initiative requires a high investment level to implement an energy production centered on solar power. In June 2014 the private sector had already invested a total of KRW 300 billion (USD 292m.) for the production of new and renewable energy. In 2012, the Seoul Municipal Government obtained KRW 230b to finance new fuel cell stations. These plants use hydrogen as fuel to help securing energy supply in the city. Korea Hydro & Nuclear Power Co. accorded an additional 63.5b KRW to finance 3762 new solar power stations.",),
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
                      MaterialPageRoute(builder: (context) => const FourthPage()),
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
            Spacer()
          ],
        ),
      ),
    );
  }
}
