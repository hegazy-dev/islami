import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:islami/app_theme.dart';
import 'package:islami/home_screen.dart';

class OnboardingScreen extends StatelessWidget {
  static const String routeName = '/';

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return IntroductionScreen(
      globalBackgroundColor: Color(0xFF202020),

      pages: [
        PageViewModel(
          titleWidget: SizedBox.shrink(),

          bodyWidget: SafeArea(
            child: Column(
              children: [
                SizedBox(height: 20),

                Image.asset("assets/images/islami_header.png"),

                SizedBox(height: 40),

                Center(
                  child: Image.asset(
                    "assets/images/onboarding_image_1.png",
                    fit: BoxFit.contain,
                  ),
                ),

                SizedBox(height: 50),

                Text(
                  "Welcome To Islami App",
                  textAlign: TextAlign.center,
                  style: textTheme.headlineSmall?.copyWith(
                    color: AppTheme.primary,
                    fontWeight: .normal,
                  ),
                ),
              ],
            ),
          ),

          decoration: PageDecoration(
            titlePadding: EdgeInsets.zero,
            bodyPadding: EdgeInsets.zero,
            contentMargin: EdgeInsets.zero,
            pageColor: Color(0xFF202020),
          ),
        ),

        PageViewModel(
          titleWidget: SizedBox.shrink(),

          bodyWidget: SafeArea(
            child: Column(
              children: [
                SizedBox(height: 20),

                Image.asset("assets/images/islami_header.png"),

                SizedBox(height: 40),

                Center(
                  child: Image.asset(
                    "assets/images/onboarding_image_2.png",
                    fit: BoxFit.contain,
                  ),
                ),

                Text(
                  "Welcome To Islami App",
                  textAlign: TextAlign.center,
                  style: textTheme.headlineSmall?.copyWith(
                    color: AppTheme.primary,
                    fontWeight: .normal,
                  ),
                ),

                SizedBox(height: 40),

                Text(
                  "We Are Very Excited To Have You In Our Community",
                  textAlign: TextAlign.center,
                  style: textTheme.headlineSmall?.copyWith(
                    color: AppTheme.primary,
                    fontWeight: .normal,
                  ),
                ),
              ],
            ),
          ),

          decoration: PageDecoration(
            titlePadding: EdgeInsets.zero,
            bodyPadding: EdgeInsets.zero,
            contentMargin: EdgeInsets.zero,
            pageColor: Color(0xFF202020),
          ),
        ),

        PageViewModel(
          titleWidget: SizedBox.shrink(),

          bodyWidget: SafeArea(
            child: Column(
              children: [
                SizedBox(height: 20),

                Image.asset("assets/images/islami_header.png"),

                SizedBox(height: 40),

                Center(
                  child: Image.asset(
                    "assets/images/onboarding_image_3.png",
                    fit: BoxFit.contain,
                  ),
                ),

                Text(
                  "Reading the Quran",
                  textAlign: TextAlign.center,
                  style: textTheme.headlineSmall?.copyWith(
                    color: AppTheme.primary,
                    fontWeight: .normal,
                  ),
                ),

                SizedBox(height: 40),

                Text(
                  "Read, and your Lord is the Most Generous",
                  textAlign: TextAlign.center,
                  style: textTheme.headlineSmall?.copyWith(
                    color: AppTheme.primary,
                    fontWeight: .normal,
                  ),
                ),
              ],
            ),
          ),

          decoration: PageDecoration(
            titlePadding: EdgeInsets.zero,
            bodyPadding: EdgeInsets.zero,
            contentMargin: EdgeInsets.zero,
            pageColor: Color(0xFF202020),
          ),
        ),

        PageViewModel(
          titleWidget: SizedBox.shrink(),

          bodyWidget: SafeArea(
            child: Column(
              children: [
                SizedBox(height: 20),

                Image.asset("assets/images/islami_header.png"),

                SizedBox(height: 40),

                Center(
                  child: Image.asset(
                    "assets/images/onboarding_image_4.png",
                    fit: BoxFit.contain,
                  ),
                ),

                Text(
                  "Bearish",
                  textAlign: TextAlign.center,
                  style: textTheme.headlineSmall?.copyWith(
                    color: AppTheme.primary,
                    fontWeight: .normal,
                  ),
                ),

                SizedBox(height: 40),

                Text(
                  "Praise the name of your Lord, the Most High",
                  textAlign: TextAlign.center,
                  style: textTheme.headlineSmall?.copyWith(
                    color: AppTheme.primary,
                    fontWeight: .normal,
                  ),
                ),
              ],
            ),
          ),

          decoration: PageDecoration(
            titlePadding: EdgeInsets.zero,
            bodyPadding: EdgeInsets.zero,
            contentMargin: EdgeInsets.zero,
            pageColor: Color(0xFF202020),
          ),
        ),

        PageViewModel(
          titleWidget: SizedBox.shrink(),

          bodyWidget: SafeArea(
            child: Column(
              children: [
                SizedBox(height: 20),

                Image.asset("assets/images/islami_header.png"),

                SizedBox(height: 40),

                Center(
                  child: Image.asset(
                    "assets/images/onboarding_image_5.png",
                    fit: BoxFit.contain,
                  ),
                ),

                Text(
                  "Holy Quran Radio",
                  textAlign: TextAlign.center,
                  style: textTheme.headlineSmall?.copyWith(
                    color: AppTheme.primary,
                    fontWeight: .normal,
                  ),
                ),

                SizedBox(height: 40),

                Text(
                  "You can listen to the Holy Quran Radio through the application for free and easily",
                  textAlign: TextAlign.center,
                  style: textTheme.headlineSmall?.copyWith(
                    color: AppTheme.primary,
                    fontWeight: .normal,
                  ),
                ),
              ],
            ),
          ),

          decoration: PageDecoration(
            titlePadding: EdgeInsets.zero,
            bodyPadding: EdgeInsets.zero,
            contentMargin: EdgeInsets.zero,
            pageColor: Color(0xFF202020),
          ),
        ),
      ],

      showSkipButton: false,
      showBackButton: true,

      next: Text(
        "Next",
        style: textTheme.titleMedium?.copyWith(color: AppTheme.primary),
      ),

      back: Text(
        "Back",
        style: textTheme.titleMedium?.copyWith(color: AppTheme.primary),
      ),

      done: Text(
        "Done",
        style: textTheme.titleMedium?.copyWith(color: AppTheme.primary),
      ),

      onDone: () {
        Navigator.pushReplacementNamed(context, HomeScreen.routeName);
      },

      dotsDecorator: DotsDecorator(
        color: Colors.grey.shade600,
        activeColor: AppTheme.primary,
        size: Size(8, 8),
        activeSize: Size(20, 8),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
