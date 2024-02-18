import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:Cloth_Cylcle/bloc/login_bloc.dart';
import 'package:Cloth_Cylcle/screens/complete_profile/complete_profile_screen.dart';
import 'package:Cloth_Cylcle/screens/profile/about.dart';

import 'components/profile_menu.dart';
import 'components/profile_pic.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = "/profile";

  const ProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            const ProfilePic(),
            const SizedBox(height: 20),
            ProfileMenu(
              text: "My Account",
              icon: "assets/icons/User Icon.svg",
              onpress: () => {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CompleteProfileScreen()))
              },
            ),
            ProfileMenu(
              text: "Notifications",
              icon: "assets/icons/Bell.svg",
              onpress: () {},
            ),
            ProfileMenu(
              text: "Settings",
              icon: "assets/icons/Settings.svg",
              onpress: () {},
            ),
            ProfileMenu(
              text: "About",
              icon: "assets/icons/Question mark.svg",
              onpress: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AboutPage()));
              },
            ),
            ProfileMenu(
              text: "Log Out",
              icon: "assets/icons/Log out.svg",
              onpress: () {
                // Panggil event logout di sini
                context.read<LoginBloc>().add(ProsesLogout());
              },
            ),
          ],
        ),
      ),
    );
  }
}
