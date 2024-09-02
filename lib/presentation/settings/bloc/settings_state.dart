part of 'settings_bloc.dart';

@immutable
sealed class SettingsState {}

final class SettingsInitial extends SettingsState {}

abstract class SettingActionState extends SettingsState {}

class SettingsBackClickState extends SettingActionState {}
class SettingsNotificationSettingsClickState extends SettingActionState {}
class SettingsPasswordManagerClickState extends SettingActionState {}
class SettingsDeleteAccountClickState extends SettingActionState {}
