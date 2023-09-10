import 'package:booklyy/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomListItem extends StatelessWidget {
  const CustomListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return
       AspectRatio(
          aspectRatio:1.5/3,
          child: SvgPicture.asset(AssetsData.book ,));

  }
}
