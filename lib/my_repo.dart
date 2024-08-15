import 'package:apis/user_model.dart';
import 'package:apis/web_services.dart';
import 'package:retrofit/retrofit.dart';

class MyRepo {
  final WebServices webServices;
  MyRepo(this.webServices);

  Future<List<UserModel>> getAllUsers() async {
    var response = await webServices.getAllUsers();
    return response.map((user) => UserModel.fromJson(user.toJson())).toList();
  }

  Future<UserModel> getUserById(int id) async {
    var response = await webServices.getUSerById(id);
    return UserModel.fromJson(response.toJson());
  }

  Future<UserModel> createNewUser(UserModel newUser) async {
    return await webServices.createNewUser(
      newUser,
      'Bearer 6fc379f7304349cbd7f94f7047b05cf84dcf2fcdf3bcbdfe1035231423c26649',
    );
  }

  Future<HttpResponse> deleteUser(int id) async {
    return await webServices.deleteUser(
      id,
      'Bearer 6fc379f7304349cbd7f94f7047b05cf84dcf2fcdf3bcbdfe1035231423c26649',
    );
  }
}
