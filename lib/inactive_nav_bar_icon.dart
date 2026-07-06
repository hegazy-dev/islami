import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InactiveNavBarIcon extends StatelessWidget {
  String iconName;

  InactiveNavBarIcon({required this.iconName});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'assets/icons/$iconName.svg',
      height: 28,
      width: 28,
      fit: .scaleDown,
      colorFilter: ColorFilter.mode(Color(0xFF202020), BlendMode.srcIn),
    );
  }
}
