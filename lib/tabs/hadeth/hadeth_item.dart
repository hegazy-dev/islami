import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/app_theme.dart';
import 'package:islami/tabs/hadeth/hadeth.dart';
import 'package:islami/tabs/hadeth/hadeth_details_screen.dart';
import 'package:islami/widgets/loading_indicator.dart';

class HadethItem extends StatefulWidget {
  int index;

  HadethItem({required this.index});

  @override
  State<HadethItem> createState() => _HadethItemState();
}

class _HadethItemState extends State<HadethItem> {
  Hadeth? hadeth;

  @override
  Widget build(BuildContext context) {
    if (hadeth == null) {
      loadHadeth();
    }
    double screenHeight = MediaQuery.sizeOf(context).height;
    TextTheme textTheme = Theme.of(context).textTheme;

    return InkWell(
      onTap: () {
        Navigator.of(
          context,
        ).pushNamed(HadethDetailsScreen.routeName, arguments: hadeth);
      },
      child: Container(
        decoration: BoxDecoration(
          color: AppTheme.primary,
          borderRadius: .circular(20),
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 12, left: 12, right: 12),
              child: Row(
                mainAxisAlignment: .spaceBetween,
                children: [
                  Image.asset(
                    'assets/images/hadeth_left_corner.png',
                    height: screenHeight * 0.1,
                    fit: .fill,
                  ),
                  if (hadeth != null)
                    Expanded(
                      child: Text(
                        hadeth!.title,
                        style: textTheme.headlineSmall,
                        textAlign: .center,
                      ),
                    ),
                  Image.asset(
                    'assets/images/hadeth_right_corner.png',
                    height: screenHeight * 0.1,
                    fit: .fill,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/hadeth_card_background.png',
                    ),
                  ),
                ),
                child: hadeth == null
                    ? LoadingIndicator()
                    : ListView.separated(
                        physics: NeverScrollableScrollPhysics(),
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        itemBuilder: (_, index) => Text(
                          hadeth!.content[index],
                          style: textTheme.titleMedium?.copyWith(
                            color: AppTheme.black,
                          ),
                          textAlign: .center,
                        ),
                        separatorBuilder: (context, index) =>
                            SizedBox(height: 4),
                        itemCount: hadeth!.content.length,
                      ),
              ),
            ),
            Image.asset(
              'assets/images/hadeth_footer.png',
              width: double.infinity,
              fit: .fill,
            ),
          ],
        ),
      ),
    );
  }

  Future<void> loadHadeth() async {
    String hadethFileCOntent = await rootBundle.loadString(
      'assets/text/h${widget.index + 1}.txt',
    );
    List<String> hadethLines = hadethFileCOntent.split('\n');
    String title = hadethLines.first;
    hadethLines.removeAt(0);
    List<String> content = hadethLines;
    hadeth = Hadeth(title: title, content: content, num: widget.index + 1);
    setState(() {});
  }
}
