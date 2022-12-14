part of 'user_cubit.dart';

abstract class UserState extends Equatable {
  const UserState();
}

class AuthorizedState extends UserState {
  final User user;
  final String token;

  const AuthorizedState({
    required this.user,
    required this.token,
  });

  Map<String, dynamic> toJson() => {
        "type": "user/authorized",
        "token": token,
        "user": user.toHydratedJson(),
      };

  factory AuthorizedState.fromJson(Map<String, dynamic> json) {
    return AuthorizedState(
      user: User.fromHydratedJson(json),
      token: json["token"],
    );
  }

  AuthorizedState copyWith({User? user, String? token}) {
    return AuthorizedState(
      user: user ?? this.user,
      token: token ?? this.token,
    );
  }

  @override
  List<Object> get props => [user, token];
}

class LoadingUserState extends UserState {
  @override
  List<Object> get props => [];
}

class NotAuthorizedState extends UserState {
  Map<String, dynamic> toJson() => {
        "type": "not-authorized",
      };

  @override
  List<Object> get props => [];
}
