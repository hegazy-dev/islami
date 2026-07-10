import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islami/app_theme.dart';

class ActiveNavBarIcon extends StatelessWidget {
  String iconName;

  ActiveNavBarIcon({required this.iconName});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 6, horizontal: 20),
      decoration: BoxDecoration(
        color: AppTheme.black.withValues(alpha: 0.6),
        borderRadius: .circular(66),
      ),
      child: SvgPicture.asset(
        'assets/icons/$iconName.svg',
        height: 22,
        width: 22,
        fit: .scaleDown,
        colorFilter: ColorFilter.mode(AppTheme.white, BlendMode.srcIn),
      ),
    );
  }
}
