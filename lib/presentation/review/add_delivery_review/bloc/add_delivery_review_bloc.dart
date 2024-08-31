import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'add_delivery_review_event.dart';
part 'add_delivery_review_state.dart';

class AddDeliveryReviewBloc extends Bloc<AddDeliveryReviewEvent, AddDeliveryReviewState> {
  AddDeliveryReviewBloc() : super(AddDeliveryReviewInitial()) {
    on<AddDeliveryReviewEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
