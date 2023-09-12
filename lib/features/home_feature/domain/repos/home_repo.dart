import 'package:booklyy/core/errors/failure.dart';
import 'package:booklyy/features/home_feature/domain/entities/book_entity.dart';
import 'package:dartz/dartz.dart';

abstract  class HomeRepo{ 
    Future<Either<Failure , List<BookEntity>>> fetchFeaturedBooks();
    Future<Either<Failure , List<BookEntity>>> fetchNewsBooks();
}