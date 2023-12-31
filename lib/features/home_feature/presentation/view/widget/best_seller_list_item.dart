import 'package:booklyy/constants.dart';
import 'package:booklyy/core/utils/app_router.dart';
import 'package:booklyy/core/utils/assets.dart';
import 'package:booklyy/core/utils/styles.dart';
import 'package:booklyy/features/home_feature/presentation/view/widget/book_rating.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class BookListViewItem extends StatelessWidget {
  const  BookListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        GoRouter.of(context).push(AppRouter.kBookDetailsView);
      },
      child: SizedBox(
        height: 120,
        child: Row(
          children: [
            AspectRatio(
                aspectRatio: 2.7 / 4, child: SvgPicture.asset(AssetsData.book , fit: BoxFit.fill,)),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(
                      'Harry Potter and the goblet of Fire',
                      style: Styles.textStyle20.copyWith(fontFamily: kGtSectraFine),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    'J.K. Rowling',
                    style: Styles.textStyle14.copyWith(color: const Color(0xff707070)),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Row(
                    children: [
                      Text(
                        '19.99',
                        style: Styles.textStyle20
                            .copyWith(fontWeight: FontWeight.bold ,),
                      ),
                      const Spacer(),
                      const BookRating()
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
