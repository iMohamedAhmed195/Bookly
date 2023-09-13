import 'package:booklyy/features/home_feature/domain/entities/book_entity.dart';

abstract class HomeRemoteDataSource {
  List<BookEntity> fetchFeaturedBooks();
  List<BookEntity> fetchNewsBooks();
}

class HomeLocalDataSourceImp extends HomeRemoteDataSource{
  @override
  List<BookEntity> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }

  @override
  List<BookEntity> fetchNewsBooks() {
    // TODO: implement fetchNewsBooks
    throw UnimplementedError();
  }
}