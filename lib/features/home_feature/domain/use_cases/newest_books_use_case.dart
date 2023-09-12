import 'package:booklyy/core/errors/failure.dart';
import 'package:booklyy/core/use_case/use_cases.dart';
import 'package:booklyy/features/home_feature/domain/entities/book_entity.dart';
import 'package:booklyy/features/home_feature/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class FetchNewestBooksUseCase extends UseCases<List<BookEntity>, NoParam> {
  final HomeRepo homeRepo;

  FetchNewestBooksUseCase(this.homeRepo);

  @override
  Future<Either<Failure, List<BookEntity>>> call([NoParam? param]) async{
    return  await homeRepo.fetchNewsBooks();
  }
}
