
import 'package:booklyy/constants.dart';
import 'package:booklyy/core/utils/app_router.dart';
import 'package:booklyy/features/home_feature/domain/entities/book_entity.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';



void main() async{
  runApp(const Bookly());

  Hive.registerAdapter(BookEntityAdapter());
 await Hive.openBox(kFeaturedBox);
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
        // textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)
      ),
    );
  }
}


