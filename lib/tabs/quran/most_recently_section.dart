import 'package:flutter/material.dart';
import 'package:islami/tabs/quran/most_recently_item.dart';
import 'package:islami/tabs/quran/quran_service.dart';

class MostRecentlySection extends StatelessWidget {
  const MostRecentlySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: QuranService.mostRecentluSuras.isNotEmpty,
      child: Padding(
        padding: EdgeInsets.only(left: 20, bottom: 20),
        child: Column(
          crossAxisAlignment: .start,
          children: [
            Text(
              'Most Recently',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            SizedBox(height: 10),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.16,
              child: ListView.separated(
                itemBuilder: (_, index) =>
                    MostRecentlyItem(QuranService.mostRecentluSuras.reversed.toList()[index]),
                itemCount: QuranService.mostRecentluSuras.length,
                separatorBuilder: (_, _) => SizedBox(width: 10),
                scrollDirection: .horizontal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
