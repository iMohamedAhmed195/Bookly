import 'package:booklyy/core/utils/styles.dart';
import 'package:booklyy/features/home_feature/presentation/view/widget/best_seller_list_item.dart';
import 'package:booklyy/features/home_feature/presentation/view/widget/custom_appbar.dart';
import 'package:booklyy/features/home_feature/presentation/view/widget/featured_listview_home.dart';
import 'package:flutter/material.dart';


class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeatureBooksListView(),
          Padding(
            padding:
                EdgeInsets.only(left: 10.0, right: 20.0, top: 10, bottom: 20),
            child: Text(
              'Best Seller',
              style: Styles.textStyle18,
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


