import 'package:booklyy/features/home_feature/presentation/view/widget/custom_appbar.dart';
import 'package:booklyy/features/home_feature/presentation/view/widget/custom_list_view_book.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(),
        FeatureBooksListView(),
      ],
    );
  }
}


