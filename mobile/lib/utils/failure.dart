abstract class Failure {
  final String message;

  const Failure(this.message);
}

class InvalidCredentials extends Failure {
  const InvalidCredentials() : super("Неверные данные");
}

class CantAccessOurServices extends Failure {
  const CantAccessOurServices() : super("Наши сервисы сейчас не доступны");
}

class FailedToCreateUser extends Failure {
  const FailedToCreateUser() : super("Не удалось зарегистрировать вам аккаунт");
}

class EmailAlreadyTaken extends Failure {
  const EmailAlreadyTaken() : super("Этот email уже используется");
}