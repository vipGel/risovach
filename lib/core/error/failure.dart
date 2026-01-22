import 'package:equatable/equatable.dart';

/// Small brother of exception to return error message
abstract class Failure extends Equatable {
  @override
  List<Object> get props => [];
}

class ServerFailure extends Failure {}

class CacheFailure extends Failure {}

class NoNetFailure extends Failure {}

class TimeoutFailure extends Failure {}

abstract class FirebaseFailure extends Failure {
  final String message;

  FirebaseFailure([this.message = '']);

  @override
  List<Object> get props => [message];
}

class UserNotFoundFailure extends FirebaseFailure {
  UserNotFoundFailure() : super('Пользователь не найден');
}

class UserNotVerified extends FirebaseFailure {
  UserNotVerified() : super('Пользователь не верифицирован');
}

class WeakPassword extends FirebaseFailure {
  WeakPassword() : super('Слабый пароль');
}

class EmailAlreadyInUse extends FirebaseFailure {
  EmailAlreadyInUse() : super('Пользователь с таким email уже существует');
}

class Unknown extends FirebaseFailure {
  Unknown() : super('Неизвестная ошибка');
}

class UserNotFound extends FirebaseFailure {
  UserNotFound() : super('Пользователь не найден');
}

class WrongPassword extends FirebaseFailure {
  WrongPassword() : super('Неверный пароль');
}
class NotFound extends FirebaseFailure {
  NotFound() : super('Не найдено');
}
