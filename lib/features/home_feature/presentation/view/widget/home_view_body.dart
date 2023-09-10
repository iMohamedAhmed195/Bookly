
import 'package:booklyy/features/home_feature/presentation/view/widget/custom_appbar.dart';


import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          // FeatureBooksListView(),
          Padding(
            padding: EdgeInsets.only(left: 15.0 ,right: 20.0,top: 15),
            child: Text('asd'
              // 'Best Seller',style: Styles.titleMedium,
            ),
          )
        ],
      ),
    );
  }
}


