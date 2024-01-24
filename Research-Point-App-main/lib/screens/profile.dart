import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:researchcore/components/controller.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final UserController userController = Get.put(UserController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Obx(() => Text(
                "Name:${userController.currentUser.value.name}",
                style: const TextStyle(color: Colors.indigo, fontSize: 20),
              )),
          const SizedBox(
            height: 10,
          ),
          Obx(() => Text(
                "Email:${userController.currentUser.value.email}",
                style: const TextStyle(color: Colors.indigo, fontSize: 20),
              )),
        ],
      ),
    );
  }
}
