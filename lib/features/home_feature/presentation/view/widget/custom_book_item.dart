import 'package:booklyy/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key});

  @override
  Widget build(BuildContext context) {
    return
       AspectRatio(
          aspectRatio:2.6/4,
          child: SvgPicture.asset(AssetsData.book ,fit: BoxFit.fill,));

  }
}
