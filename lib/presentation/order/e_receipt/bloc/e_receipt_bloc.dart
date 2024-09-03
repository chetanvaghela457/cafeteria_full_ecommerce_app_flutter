import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:coffeeshopapp/data/cart_data.dart';
import 'package:coffeeshopapp/presentation/cart/models/cart_model.dart';
import 'package:meta/meta.dart';

part 'e_receipt_event.dart';
part 'e_receipt_state.dart';

class EReceiptBloc extends Bloc<EReceiptEvent, EReceiptState> {
  EReceiptBloc() : super(EReceiptInitial()) {
    on<EReceiptInitialEvent>(eReceiptInitialEvent);
    on<EReceiptBackClickEvent>(eReceiptBackClickEvent);
    on<EReceiptDownloadClickEvent>(eReceiptDownloadClickEvent);
  }

  FutureOr<void> eReceiptInitialEvent(EReceiptInitialEvent event, Emitter<EReceiptState> emit) async {
    emit(EReceiptLoadingState());
    await Future.delayed(Duration(seconds: 1));
    emit(EReceiptLoadedSuccessState(
      CartData.cartData.map((e) => Cart.fromJson(e)).toList(),
    ));
  }

  FutureOr<void> eReceiptBackClickEvent(EReceiptBackClickEvent event, Emitter<EReceiptState> emit) {
    emit(EReceiptBackClickState());
  }

  FutureOr<void> eReceiptDownloadClickEvent(EReceiptDownloadClickEvent event, Emitter<EReceiptState> emit) {
    emit(EReceiptDownloadClickState());
  }
}
