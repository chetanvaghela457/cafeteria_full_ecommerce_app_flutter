import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'delivery_address_list_event.dart';
part 'delivery_address_list_state.dart';

class DeliveryAddressListBloc extends Bloc<DeliveryAddressListEvent, DeliveryAddressListState> {
  DeliveryAddressListBloc() : super(DeliveryAddressListInitial()) {
    on<DeliveryAddressListEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
