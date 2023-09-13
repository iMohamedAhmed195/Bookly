import 'package:booklyy/constants.dart';
import 'package:booklyy/core/utils/api_service.dart';
import 'package:booklyy/core/utils/functions.dart';
import 'package:booklyy/features/home_feature/data/models/books_model.dart';
import 'package:booklyy/features/home_feature/domain/entities/book_entity.dart';

abstract class HomeRemoteDataSource {
  Future<List<BookEntity>> fetchFeaturedBooks();
  Future<List<BookEntity>> fetchNewsBooks();
}

class HomeRemoteDataSourceImp extends HomeRemoteDataSource{
  final ApiService apiService;

  HomeRemoteDataSourceImp(this.apiService);
  @override
  Future<List<BookEntity>> fetchFeaturedBooks() async {
    var data = await apiService.getData(endPoint: 'volumes?Filtering=free-ebooks&q=computer science');
    List<BookEntity> books = getBooksList(data);
    saveBooksLocal(books, kFeaturedBox);
    return books;

  }



  @override
  Future<List<BookEntity>> fetchNewsBooks() async{
    var data = await apiService.getData(endPoint: 'volumes?Filtering=free-ebooks&Sorting=newest &q=computer science');
    List<BookEntity> books = getBooksList(data);
    return books;
  }


  List<BookEntity> getBooksList(Map<String , dynamic> data){
    List<BookEntity> books = [];
    for(var bookMap in data['items']){
      books.add(Items.fromJson(bookMap));
    }
    return books ;
  }
  
}

