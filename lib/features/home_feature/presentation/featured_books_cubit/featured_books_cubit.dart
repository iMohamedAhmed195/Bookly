
import 'package:bloc/bloc.dart';
import 'package:booklyy/features/home_feature/presentation/featured_books_cubit/featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit() : super(FeaturedBooksInitial());
}
