import 'package:booklyy/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class  SplashViewBody extends StatelessWidget {
  const SplashViewBody ({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment:MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children:  [
        SvgPicture.asset(AssetsData.logo , width: 250,),
        SizedBox(height: 15,),
        const Text("Read Free Book",textAlign: TextAlign.center,),
      ]
    );
  }
}
