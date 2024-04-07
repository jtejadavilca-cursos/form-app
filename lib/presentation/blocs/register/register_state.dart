part of 'register_cubit.dart';

enum FormStatus {
  invalid,
  valid,
  validating,
  posting,
}

class RegisterFormState extends Equatable {
  final FormStatus formStatus;
  final bool isValid;
  final UsernameInput username;
  final PasswordInput password;
  final EmailInput email;

  const RegisterFormState({
    this.formStatus = FormStatus.invalid,
    this.isValid = false,
    this.username = const UsernameInput.pure(),
    this.password = const PasswordInput.pure(),
    this.email = const EmailInput.pure(),
  });

  RegisterFormState copyWith({
    FormStatus? formStatus,
    bool? isValid,
    UsernameInput? username,
    PasswordInput? password,
    EmailInput? email,
  }) =>
      RegisterFormState(
        formStatus: formStatus ?? this.formStatus,
        isValid: isValid ?? this.isValid,
        username: username ?? this.username,
        password: password ?? this.password,
        email: email ?? this.email,
      );

  @override
  List<Object> get props => [
        formStatus,
        isValid,
        username,
        password,
        email,
      ];
}

final class RegisterInitial extends RegisterFormState {}
