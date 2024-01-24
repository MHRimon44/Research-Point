import 'package:get/get.dart';

import 'package:researchcore/models/user.dart';
import 'package:researchcore/utils/user.dart';

class UserController extends GetxController {
  var userList = <UserModel>[].obs;
  var currentUser = UserModel(name: "", email: "", password: "").obs;

  @override
  void onInit() {
    getUser();
    super.onInit();
  }

  void getUser() {
    userList.value = UserService.user;
  }

  void addUser(UserModel user) {
    userList.add(user);
  }
}
