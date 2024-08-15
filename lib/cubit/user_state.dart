part of 'user_cubit.dart';

@immutable
abstract class UserState {}

final class UserInitial extends UserState {}

class GetAllUsersState extends UserState {
  final List<UserModel> allUsersList;

  GetAllUsersState({required this.allUsersList});
}

class GetUserState extends UserState {
  final UserModel userDetails;

  GetUserState({required this.userDetails});
}

class CreateNewUserState extends UserState {
  final UserModel newUser;

  CreateNewUserState({required this.newUser});
}

class DeleteUserState extends UserState {
  final dynamic data;

  DeleteUserState({required this.data});
}