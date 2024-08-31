import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'reviews_event.dart';
part 'reviews_state.dart';

class ReviewsBloc extends Bloc<ReviewsEvent, ReviewsState> {
  ReviewsBloc() : super(ReviewsInitial()) {
    on<ReviewsEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
