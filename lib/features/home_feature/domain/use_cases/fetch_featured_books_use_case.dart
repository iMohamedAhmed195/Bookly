import 'package:booklyy/core/errors/failure.dart';
import 'package:booklyy/features/home_feature/domain/entities/book_entity.dart';
import 'package:booklyy/features/home_feature/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class FetchFeaturedBooksUseCase{
   final HomeRepo homeRepo;

   FetchFeaturedBooksUseCase(this.homeRepo);

   Future<Either<Failure , List<BookEntity>>> fetchFeaturedBooks(){
     return homeRepo.fetchFeaturedBooks();
   }
}