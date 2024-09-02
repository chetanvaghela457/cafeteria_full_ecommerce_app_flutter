part of 'settings_bloc.dart';

@immutable
sealed class SettingsEvent {}

class SettingsBackClickEvent extends SettingsEvent {}
class SettingsNotificationSettingsClickEvent extends SettingsEvent {}
class SettingsPasswordManagerClickEvent extends SettingsEvent {}
class SettingsDeleteAccountClickEvent extends SettingsEvent {}