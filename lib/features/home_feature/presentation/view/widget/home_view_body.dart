
import 'package:booklyy/core/utils/assets.dart';
import 'package:booklyy/core/utils/styles.dart';
import 'package:booklyy/features/home_feature/presentation/view/widget/custom_appbar.dart';

import 'package:booklyy/features/home_feature/presentation/view/widget/featured_listview_home.dart';


import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return   const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeatureBooksListView(),
          Padding(
            padding: EdgeInsets.only(left: 10.0 ,right: 20.0,top: 10,bottom: 20),
            child: Text('Best Seller',style: Styles.textStyle18,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: BestSellerListViewItem(),
          ),
        ],
      ),
    );
  }
}

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2/3,
              child: SvgPicture.asset(AssetsData.book)),
          const SizedBox(width: 30,),
           Column(
            children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: const Text(
                      'Harry Potter and the goblet of Fire',
                      style: Styles.textStyle20,maxLines: 2,overflow: TextOverflow.ellipsis,
                    ),
                  )
            ],
          )
        ],
      ),
    );
  }
}


