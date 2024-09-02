import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'settings_event.dart';

part 'settings_state.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  SettingsBloc() : super(SettingsInitial()) {
    on<SettingsBackClickEvent>(settingsBackClickEvent);
    on<SettingsNotificationSettingsClickEvent>(
        settingsNotificationSettingsClickEvent);
    on<SettingsPasswordManagerClickEvent>(settingsPasswordManagerClickEvent);
    on<SettingsDeleteAccountClickEvent>(settingsDeleteAccountClickEvent);
  }

  FutureOr<void> settingsBackClickEvent(
      SettingsBackClickEvent event, Emitter<SettingsState> emit) {
    emit(SettingsBackClickState());
  }

  FutureOr<void> settingsNotificationSettingsClickEvent(
      SettingsNotificationSettingsClickEvent event,
      Emitter<SettingsState> emit) {
    emit(SettingsNotificationSettingsClickState());
  }

  FutureOr<void> settingsPasswordManagerClickEvent(
      SettingsPasswordManagerClickEvent event, Emitter<SettingsState> emit) {
    emit(SettingsPasswordManagerClickState());
  }

  FutureOr<void> settingsDeleteAccountClickEvent(
      SettingsDeleteAccountClickEvent event, Emitter<SettingsState> emit) {
    emit(SettingsDeleteAccountClickState());
  }
}
