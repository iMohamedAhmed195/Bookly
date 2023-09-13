import 'package:booklyy/constants.dart';
import 'package:booklyy/features/home_feature/domain/entities/book_entity.dart';
import 'package:hive/hive.dart';

abstract class HomeLocalDataSource {
  List<BookEntity> fetchFeaturedBooks();
  List<BookEntity> fetchNewsBooks();
}

class HomeLocalDataSourceImp extends HomeLocalDataSource{
  @override
  List<BookEntity> fetchFeaturedBooks() {
    var box = Hive.box<BookEntity>(kFeaturedBox);
   return box.values.toList() ;
  }

  @override
  List<BookEntity> fetchNewsBooks() {
    var box = Hive.box<BookEntity>(kNewestBox);
    return box.values.toList();
  }
}