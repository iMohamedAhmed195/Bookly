import 'package:booklyy/features/home_feature/presentation/view/widget/custom_book_item.dart';
import 'package:flutter/material.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height *0.12,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder:(context ,  index){
            return const Padding(
              padding:  EdgeInsets.symmetric(horizontal: 8.0),
              child: CustomBookImage(),
            ) ;
          }
      ),
    );
  }
}