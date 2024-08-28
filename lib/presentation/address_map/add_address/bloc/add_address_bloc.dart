import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'add_address_event.dart';
part 'add_address_state.dart';

class AddAddressBloc extends Bloc<AddAddressEvent, AddAddressState> {
  AddAddressBloc() : super(AddAddressInitial()) {
    on<AddAddressEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
