import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:log_in/constants/colors.dart';
import 'package:log_in/constants/strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    final ksize = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
      child: Center(
        child: Container(
          height: ksize.height * 0.1,
          width: ksize.width * 0.9,
          decoration: BoxDecoration(
            color: AppColor.primarycolor,
            borderRadius: BorderRadius.circular(10)
          ),
          child: const Center(
            child: Text(
              AppString.homeString,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
