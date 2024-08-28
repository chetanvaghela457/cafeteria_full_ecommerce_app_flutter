import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'manage_address_event.dart';
part 'manage_address_state.dart';

class ManageAddressBloc extends Bloc<ManageAddressEvent, ManageAddressState> {
  ManageAddressBloc() : super(ManageAddressInitial()) {
    on<ManageAddressEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
