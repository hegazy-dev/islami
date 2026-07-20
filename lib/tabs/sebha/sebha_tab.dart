import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int tapsNum = 0;
  double angle = 0;

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: EdgeInsets.only(top: 16, right: 20, left: 20),
      child: Column(
        crossAxisAlignment: .center,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 20, top: 16),
            child: Text(
              'سَبِّحِ اسْمَ رَبِّكَ الأعلى ',
              style: textTheme.headlineMedium,
            ),
          ),
          Image.asset('assets/images/sebha_tail.png'),
          InkWell(
            onTap: () {
              setState(() {
                tapsNum++;
                angle += 1;
              });
            },
            child: Stack(
              alignment: .center,
              children: [
                Transform.rotate(
                  angle: angle,
                  child: Image.asset(
                    'assets/images/sebha_body.png',
                    width: MediaQuery.of(context).size.width,
                  ),
                ),
                Column(
                  children: [
                    Text('سبحان الله', style: textTheme.headlineMedium),
                    SizedBox(height: 20),
                    Text('$tapsNum', style: textTheme.headlineMedium),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
