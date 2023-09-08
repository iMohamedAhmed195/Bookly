import 'package:booklyy/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomListItem extends StatelessWidget {
  const CustomListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return   SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: AspectRatio(
          aspectRatio:3/2,
          child: SvgPicture.asset(AssetsData.book ,fit: BoxFit.contain, )),
    );
  }
}