import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'navbar_event.dart';

part 'navbar_state.dart';

class NavbarBloc extends Bloc<NavbarEvent, NavbarState> {
  NavbarBloc() : super(NavbarInitial(tabIndex: 0)) {
    on<NavbarEvent>((event, emit) {
      if (event is TabChange) {
        print(event.tabIndex);
        emit(NavbarInitial(tabIndex: event.tabIndex));
      }
    });
  }
}
