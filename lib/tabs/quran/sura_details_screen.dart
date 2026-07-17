import 'package:flutter/material.dart';
import 'package:islami/app_theme.dart';
import 'package:islami/tabs/quran/quran_service.dart';
import 'package:islami/tabs/quran/sura.dart';
import 'package:islami/tabs/widgets/loading_indicator.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routeName = '/sura-details';

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  late Sura sura;
  List<String> ayat = [];

  @override
  Widget build(BuildContext context) {
    sura = ModalRoute.of(context)!.settings.arguments as Sura;
    if (ayat.isEmpty) {
      readSura();
    }
    double screenHeight = MediaQuery.sizeOf(context).height;
    TextTheme textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(title: Text(sura.nameEN)),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                Image.asset(
                  'assets/images/details_left_corner.png',
                  height: screenHeight * 0.1,
                  fit: .fill,
                ),
                Text(
                  sura.nameAR,
                  style: textTheme.headlineSmall?.copyWith(
                    color: AppTheme.primary,
                  ),
                ),
                Image.asset(
                  'assets/images/details_right_corner.png',
                  height: screenHeight * 0.1,
                  fit: .fill,
                ),
              ],
            ),
            Expanded(
              child: ayat.isEmpty
                  ? LoadingIndicator()
                  : ListView.separated(
                      itemBuilder: (_, index) => Text(
                        ayat[index],
                        style: textTheme.titleLarge?.copyWith(
                          color: AppTheme.primary,
                        ),
                        textAlign: .center,
                      ),
                      itemCount: ayat.length,
                      separatorBuilder: (_, _) => SizedBox(height: 4),
                    ),
            ),
            Image.asset(
              'assets/images/details_footer.png',
              height: screenHeight * 0.11,
              width: double.infinity,
              fit: .fill,
            ),
          ],
        ),
      ),
    );
  }

  Future<void> readSura() async {
    String suraFileContent = await QuranService.readSurafileContent(sura.num);
    ayat = suraFileContent.split('\r\n');
    setState(() {});
  }
}
