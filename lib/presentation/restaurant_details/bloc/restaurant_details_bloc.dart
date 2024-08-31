import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'restaurant_details_event.dart';

part 'restaurant_details_state.dart';

class RestaurantDetailsBloc
    extends Bloc<RestaurantDetailsEvent, RestaurantDetailsState> {
  RestaurantDetailsBloc() : super(RestaurantDetailsInitial(tabIndex: 0)) {
    on<RestaurantDetailsEvent>((event, emit) {
      if (event is TabChange) {
        print(event.tabIndex);
        emit(RestaurantDetailsInitial(tabIndex: event.tabIndex));
      }
    });
  }
}
