import 'package:booklyy/core/utils/app_router.dart';
import 'package:booklyy/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25.0),
      child: Row(
        children: [
          SvgPicture.asset(AssetsData.logo,height: 25,),
          const Spacer(),
          IconButton(onPressed: (){
            GoRouter.of(context).push(AppRouter.kSearchView) ;
          }, icon: const Icon(FontAwesomeIcons.magnifyingGlass , size:  25,))

        ],
      ),
    );
  }
}