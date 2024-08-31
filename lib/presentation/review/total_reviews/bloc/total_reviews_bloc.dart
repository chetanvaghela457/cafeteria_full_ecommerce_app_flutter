import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'total_reviews_event.dart';
part 'total_reviews_state.dart';

class TotalReviewsBloc extends Bloc<TotalReviewsEvent, TotalReviewsState> {
  TotalReviewsBloc() : super(TotalReviewsInitial()) {
    on<TotalReviewsEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
