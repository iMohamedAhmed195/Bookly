import 'package:booklyy/features/home_feature/domain/entities/book_entity.dart';

abstract  class HomeRepo{
    Future<List<BookEntity>> fetchFeaturedBooks();
    Future<List<BookEntity>> fetchNewsBooks();
}