import 'package:apis/user_model.dart';
import 'package:apis/web_services.dart';

class MyRepo {
  final WebServices webServices;
  MyRepo(this.webServices);

  Future<List<UserModel>> getAllUsers() async {
    var response = await webServices.getAllUsers();
    return response.map((user) => UserModel.fromJson(user.toJson())).toList();
  }
}