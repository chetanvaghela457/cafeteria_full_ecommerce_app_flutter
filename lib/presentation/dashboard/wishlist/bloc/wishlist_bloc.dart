import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'wishlist_event.dart';

part 'wishlist_state.dart';

class WishlistBloc extends Bloc<WishlistEvent, WishlistState> {
  WishlistBloc() : super(WishlistInitial(tabIndex: 0)) {
    on<WishlistEvent>((event, emit) {
      if (event is TabChange) {
        print(event.tabIndex);
        emit(WishlistInitial(tabIndex: event.tabIndex));
      }
    });
  }
}
