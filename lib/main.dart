import 'package:booklyy/constants.dart';
import 'package:booklyy/core/utils/app_router.dart';
import 'package:booklyy/core/utils/bloc_observer.dart';
import 'package:booklyy/core/utils/service_locator.dart';
import 'package:booklyy/features/home_feature/data/repos/home_repo_implement.dart';
import 'package:booklyy/features/home_feature/domain/entities/book_entity.dart';
import 'package:booklyy/features/home_feature/domain/use_cases/fetch_featured_books_use_case.dart';
import 'package:booklyy/features/home_feature/domain/use_cases/fetch_newest_books_use_case.dart';
import 'package:booklyy/features/home_feature/presentation/featured_books_cubit/featured_books_cubit.dart';
import 'package:booklyy/features/home_feature/presentation/newest_books_cubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(BookEntityAdapter());
  await Hive.openBox<BookEntity>(kFeaturedBox);
  await Hive.openBox<BookEntity>(kNewestBox);
  Bloc.observer=MyBlocObserver();
  runApp(const Bookly());
}


class Bookly extends StatelessWidget {
  const Bookly({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) {
            return FeaturedBooksCubit(FetchFeaturedBooksUseCase(getIt.get<HomeRepoImpl>()));
          },
        ),
        BlocProvider(
          create: (context) {
            return NewestBooksCubit(FetchNewestBooksUseCase(getIt.get<HomeRepoImpl>()));
          },
        ),

      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          // textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)
        ),
      ),
    );
  }
}
