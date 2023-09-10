import 'package:booklyy/core/utils/styles.dart';
import 'package:booklyy/features/home_feature/presentation/view/widget/best_seller_list_item.dart';
import 'package:booklyy/features/home_feature/presentation/view/widget/custom_appbar.dart';
import 'package:booklyy/features/home_feature/presentation/view/widget/featured_list_view_home.dart';
import 'package:flutter/material.dart';



class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {

    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: CustomAppBar(),
              ),
              SizedBox(height: 30,),
              FeatureBooksListView(),
              Padding(
                padding:
                EdgeInsets.only(left: 10.0, right: 20.0, top:40,bottom: 20),
                child: Text(
                  'Best Seller',
                  style: Styles.textStyle18,
                ),
              ),

            ],
          ),
        ),
        SliverFillRemaining(
          child: BestSellerListView(),
        )
      ],
    );

  }
}
class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(

      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 10,
        itemBuilder: (context ,  index){
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0),
          child: BestSellerListViewItem(),
        );
        }
    );
  }
}



