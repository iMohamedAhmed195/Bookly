import 'package:booklyy/features/home_feature/presentation/view/widget/custom_book_item.dart';
import 'package:flutter/material.dart';

class FeatureBooksListView extends StatelessWidget {
  const FeatureBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height *0.3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder:(context ,  index){
            return const Padding(
              padding:  EdgeInsets.symmetric(horizontal: 6.0),
              child: CustomBookImage(),
            ) ;
          }
      ),
    );
  }
}

