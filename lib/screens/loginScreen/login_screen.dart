import 'package:flutter/material.dart';
import 'package:log_in/constants/strings.dart';
import '../homeScreen/home_screen.dart';
import 'widgets/fields.dart';
import 'widgets/login_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            const Text(
              AppString.loginHeading,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30, right: 30, top: 90),
              child: Fields(
                hintText: AppString.idString,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30, right: 30),
              child: Fields(
                hintText: AppString.pwString,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            GestureDetector(
              onTap: (() {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              }),
              child: const LoginButton(),
            )
          ],
        ),
      ),
    );
  }
}
