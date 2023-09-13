import 'package:booklyy/core/errors/failure.dart';
import 'package:booklyy/features/home_feature/data/data_source/home_local_data_source.dart';
import 'package:booklyy/features/home_feature/data/data_source/home_remote_data_source.dart';
import 'package:booklyy/features/home_feature/domain/entities/book_entity.dart';
import 'package:booklyy/features/home_feature/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl extends HomeRepo{
  final HomeRemoteDataSource homeRemoteDataSource;
  final HomeLocalDataSource homeLocalDataSource;

  HomeRepoImpl({ required this.homeRemoteDataSource,required this.homeLocalDataSource});

  @override
  Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooks() async{
   try {
     var booksListLocal = homeLocalDataSource.fetchFeaturedBooks();
     if(booksListLocal.isNotEmpty){
       return right(booksListLocal);
     }
     var booksListRemote = await homeRemoteDataSource.fetchFeaturedBooks();
     return right(booksListRemote);
   } catch (e) {
     if (e is DioException) {
       return left(ServerFailure.fromDioError(e));
     }
     return left(ServerFailure(e.toString()));
   }
  }

  @override
  Future<Either<Failure, List<BookEntity>>> fetchNewsBooks() async{
    try {
      var booksListLocal = homeLocalDataSource.fetchNewsBooks();
      if(booksListLocal.isNotEmpty){
        return right(booksListLocal);
      }
      var booksListRemote = await homeRemoteDataSource.fetchNewsBooks();
      return right(booksListRemote);
    } catch(e){
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

}