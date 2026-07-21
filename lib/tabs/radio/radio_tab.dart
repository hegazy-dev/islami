import 'package:flutter/material.dart';
import 'package:islami/app_theme.dart';
import 'package:islami/tabs/radio/radio_card.dart';
import 'package:islami/tabs/radio/radio.dart';

class RadioTab extends StatefulWidget {
  @override
  State<RadioTab> createState() => _RadioTabState();
}

class _RadioTabState extends State<RadioTab> {
  bool isRadioSelected = true;

  List<RadioModel> radios = [
    RadioModel(title: "Radio Ibrahim Al-Akdar"),
    RadioModel(title: "Radio Al-Qaria Yassen"),
    RadioModel(title: "Radio Ahmed Al-trabulsi"),
    RadioModel(title: 'Radio Addokali Mohammad Alalim'),
    RadioModel(title: 'Radio Al-Minshawi'),
  ];

  List<RadioModel> reciters = [
    RadioModel(title: "Ibrahim Al-Akdar"),
    RadioModel(title: "Akram Alalaqmi"),
    RadioModel(title: "Majed Al-Enezi"),
    RadioModel(title: "Malik shaibat Alhamed"),
    RadioModel(title: 'Al-Minshawi'),
  ];

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    final List<RadioModel> currentList = isRadioSelected ? radios : reciters;

    return Padding(
      padding: EdgeInsets.only(top: 20, right: 10, left: 10),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      isRadioSelected = true;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: isRadioSelected
                          ? AppTheme.primary
                          : AppTheme.black.withAlpha(70),
                      borderRadius: .circular(12),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: Center(
                        child: Text(
                          'Radio',
                          style: textTheme.titleMedium?.copyWith(
                            color: isRadioSelected
                                ? AppTheme.black
                                : AppTheme.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      isRadioSelected = false;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: !isRadioSelected
                          ? AppTheme.primary
                          : AppTheme.black.withAlpha(70),
                      borderRadius: .circular(12),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: Center(
                        child: Text(
                          'Reciters',
                          style: textTheme.titleMedium?.copyWith(
                            color: !isRadioSelected
                                ? AppTheme.black
                                : AppTheme.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),

          Expanded(
            child: Padding(
              padding: EdgeInsets.only(top: 20),
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return RadioCard(radio: currentList[index]);
                },
                separatorBuilder: (context, index) => SizedBox(height: 10),
                itemCount: radios.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
