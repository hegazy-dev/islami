import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islami/tabs/quran/sura.dart';
import 'package:islami/tabs/quran/sura_details_screen.dart';

class SuraItem extends StatelessWidget {
  Sura sura;

  SuraItem(this.sura);

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return GestureDetector(
      onTap: () {
        Navigator.of(
          context,
        ).pushNamed(SuraDetailsScreen.routeName, arguments: sura);
      },
      child: Row(
        children: [
          Stack(
            alignment: .center,
            children: [
              SvgPicture.asset('assets/icons/sura_number_frame.svg'),
              Text('${sura.num}', style: textTheme.titleLarge),
            ],
          ),
          SizedBox(width: 24),
          Column(
            children: [
              Text(sura.nameEN, style: textTheme.titleLarge),
              Text('${sura.ayatCount} Verses', style: textTheme.titleSmall),
            ],
          ),
          Spacer(),
          Text(sura.nameAR, style: textTheme.titleLarge),
        ],
      ),
    );
  }
}
