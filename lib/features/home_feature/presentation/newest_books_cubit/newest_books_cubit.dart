import 'package:bloc/bloc.dart';
import 'package:booklyy/features/home_feature/domain/entities/book_entity.dart';
import 'package:booklyy/features/home_feature/domain/use_cases/fetch_newest_books_use_case.dart';
import 'package:meta/meta.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.fetchNewestBooksUseCase) : super(NewestBooksInitial());

  final FetchNewestBooksUseCase fetchNewestBooksUseCase ;

  Future<void>  fetchNewestBooks()async{
    emit(NewestBooksLoading());
     var result = await fetchNewestBooksUseCase.call();

     result.fold(
             (failure) {
               emit(NewestBooksFailure(failure.message));
             },
             (books) {
               emit(NewestBooksSuccess(books));
             }
     );
  }
}
