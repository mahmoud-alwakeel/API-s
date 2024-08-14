import 'package:apis/my_repo.dart';
import 'package:apis/user_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  final MyRepo myRepo;
  UserCubit(this.myRepo) : super(UserInitial());

  void emitGetAllUsers() {
    myRepo.getAllUsers().then((usersList) {
      emit(GetAllUsersState(allUsersList: usersList));
    });
  }

  void emitGetUserDetails(int id) {
    myRepo.getUserById(id).then((userDetails) {
      emit(GetUserState(userDetails: userDetails));
    });
  }
}
