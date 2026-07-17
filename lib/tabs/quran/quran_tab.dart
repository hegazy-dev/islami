import 'package:flutter/material.dart';
import 'package:islami/tabs/quran/quran_service.dart';
import 'package:islami/tabs/quran/sura.dart';
import 'package:islami/tabs/quran/sura_details_screen.dart';
import 'package:islami/tabs/quran/sura_item.dart';

class QuranTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 20, bottom: 10),
          child: Text(
            'Suras List',
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        Expanded(
          child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 20),
            itemBuilder: (_, index) =>
                SuraItem(QuranService.getSuraFromIndex(index)),
            separatorBuilder: (_, _) =>
                Divider(thickness: 1, height: 20, indent: 40, endIndent: 40),
            itemCount: 114,
          ),
        ),
      ],
    );
  }
}
