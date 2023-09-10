import 'package:booklyy/features/home_feature/presentation/view/widget/custom_list_view_book.dart';
import 'package:flutter/material.dart';

class FeatureBooksListView extends StatelessWidget {
  const FeatureBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height *0.35,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
          itemBuilder:(context ,  index){
            return const Padding(
              padding:  EdgeInsets.symmetric(horizontal: 6.0),
              child: CustomListItem(),
            ) ;
          }
      ),
    );
  }
}

