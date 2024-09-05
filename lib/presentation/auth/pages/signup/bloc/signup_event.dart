part of 'signup_bloc.dart';

@immutable
sealed class SignupEvent {}

class SignupGoogleSignupNavigateEvent extends SignupEvent {}

class SignupFacebookSignupNavigateEvent extends SignupEvent {}

class SignupAppleSignupNavigateEvent extends SignupEvent {}

class SignupLoginPageNavigateEvent extends SignupEvent {}

class SignupOtpPageNavigateEvent extends SignupEvent {}

class EmailChanged extends SignupEvent {
  final String email;

  EmailChanged(this.email);
}

class UsernameChanged extends SignupEvent {
  final String username;

  UsernameChanged(this.username);
}

class PasswordChanged extends SignupEvent {
  final String password;

  PasswordChanged(this.password);
}

class SignUpSubmitted extends SignupEvent {
  final String name;
  final String email;
  final String password;

  SignUpSubmitted(this.name, this.email, this.password);

  @override
  List<Object> get props => [name, email, password];
}
