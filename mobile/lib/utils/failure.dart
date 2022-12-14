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

class FailedToCreatePatient extends Failure {
  const FailedToCreatePatient() : super("Не удалось создать пациента. Мы уже работаем над этим :)");
}

class FailedToUpdatePatient extends Failure {
  const FailedToUpdatePatient() : super("Не удалось обновить пациента. Мы уже работаем над этим :)");
}

class EmailAlreadyTaken extends Failure {
  const EmailAlreadyTaken() : super("Этот email уже используется");
}

class FailedToPredict extends Failure {
  const FailedToPredict() : super("Произошла ошибка при диагностирование. Попробуйте снова чуть позже");
}

class InvalidState extends Failure {
  const InvalidState() : super("Неверное состояние приложения");
}

class UsernameUniqueFailure extends Failure {
  const UsernameUniqueFailure(String username) : super("Username $username уже используется другим пользователем");
}