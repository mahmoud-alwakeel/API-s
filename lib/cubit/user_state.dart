part of 'user_cubit.dart';

@immutable
abstract class UserState {}

final class UserInitial extends UserState {}

class GetAllUsersState extends UserState {
  final List<UserModel> allUsersList;

  GetAllUsersState({required this.allUsersList});
}