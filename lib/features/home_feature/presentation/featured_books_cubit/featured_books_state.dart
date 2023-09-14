
import 'package:booklyy/features/home_feature/domain/entities/book_entity.dart';

abstract class FeaturedBooksState {}

class FeaturedBooksInitial extends FeaturedBooksState {}
class FeaturedBooksLoading extends FeaturedBooksState {}
class FeaturedBooksSuccess extends FeaturedBooksState {
  final List<BookEntity> books ;

  FeaturedBooksSuccess(this.books);
}
class FeaturedBooksFailure extends FeaturedBooksState {
  final String errorMessage ;

  FeaturedBooksFailure(this.errorMessage);
}
