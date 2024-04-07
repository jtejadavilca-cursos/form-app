import 'package:formz/formz.dart';

// Define input validation errors
enum UsernameInputError { empty, length }

// Extend FormzInput and provide the input type and error type.
class UsernameInput extends FormzInput<String, UsernameInputError> {
  // Call super.pure to represent an unmodified form input.
  const UsernameInput.pure() : super.pure('');

  // Call super.dirty to represent a modified form input.
  const UsernameInput.dirty([String value = '']) : super.dirty(value);

  String? get errorMessage {
    if (isValid || isPure) return null;

    if (displayError == UsernameInputError.empty) {
      return 'El campo es requerido';
    }

    if (displayError == UsernameInputError.length) return 'Mínimo 6 caracteres';

    return null;
  }

  // Override validator to handle validating a given input value.
  @override
  UsernameInputError? validator(String value) {
    if (value.trim().isEmpty) return UsernameInputError.empty;
    if (value.trim().length < 6) return UsernameInputError.length;

    return null;
  }
}
