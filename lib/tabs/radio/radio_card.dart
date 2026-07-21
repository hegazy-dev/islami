import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:islami/app_theme.dart';
import 'package:islami/tabs/radio/radio.dart';

class RadioCard extends StatefulWidget {
  final RadioModel radio;

  RadioCard({required this.radio});
  @override
  State<RadioCard> createState() => _RadioCardState();
}

class _RadioCardState extends State<RadioCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 133,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppTheme.primary,
        borderRadius: .circular(20),
        image: DecorationImage(
          image: AssetImage(
            widget.radio.isPlaying
                ? 'assets/images/active_radio_card_background.png'
                : 'assets/images/inactive_radio_card_background.png',
          ),
          alignment: .bottomCenter,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Column(
          children: [
            Text(
              widget.radio.title,
              style: Theme.of(
                context,
              ).textTheme.titleLarge?.copyWith(color: AppTheme.black),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: .center,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      widget.radio.isPlaying = !widget.radio.isPlaying;
                    });
                  },
                  child: SvgPicture.asset(
                    widget.radio.isPlaying
                        ? "assets/icons/pause_icon.svg"
                        : "assets/icons/play_icon.svg",
                  ),
                ),
                SizedBox(width: 20),
                InkWell(
                  onTap: () {
                    setState(() {
                      widget.radio.soundOn = !widget.radio.soundOn;
                    });
                  },
                  child: SvgPicture.asset(
                    widget.radio.soundOn
                        ? "assets/icons/unmuted_sound_icon.svg"
                        : "assets/icons/muted_sound_icon.svg",
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
