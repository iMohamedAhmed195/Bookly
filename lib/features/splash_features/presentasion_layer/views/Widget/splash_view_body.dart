import 'package:booklyy/core/utils/assets.dart';
import 'package:booklyy/features/splash_features/presentasion_layer/views/Widget/sliding_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class  SplashViewBody extends StatefulWidget {
  const SplashViewBody ({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin{

  late AnimationController animationController ;
  late Animation<Offset> slidingAnimation ;



  @override
  void initState() {
   
    super.initState();
    animationController = AnimationController(vsync: this , duration:const  Duration(seconds: 1));
    slidingAnimation = Tween<Offset>(begin: const Offset(0,7) , end:  Offset.zero).animate(animationController);
    animationController.forward();

  }
  @override
  void dispose() {

    super.dispose();
    animationController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment:MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children:  [
        SvgPicture.asset(AssetsData.logo , width: 250,),
        const SizedBox(height: 15,),
        SlidingText(slidingAnimation : slidingAnimation),
      ]
    );
  }
}


