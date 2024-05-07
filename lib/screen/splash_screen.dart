import 'package:beltranui/screen/dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:shape_of_view_null_safe/shape_of_view_null_safe.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          splashImage(),
          Gap(20),
          title(),
          Gap(20),
          myButton(),
        ],
      ),
    );
  }

  Widget splashImage() {
    return ShapeOfView(
        shape: ArcShape(
          direction: ArcDirection.Outside,
          height: 20,
          position: ArcPosition.Bottom,
        ),
        elevation: 0,
        child: Container(
          height: Get.height / 1.5,
          width: Get.width,
          decoration: BoxDecoration(
            color: Color(0xff657484),
          ),
          child: Image.asset("assets/Algicida.png"),
        ));
  }

  Widget title() {
    return Text(
      "Consigue Todos \n Tus Productos",
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  Widget myButton() {
    return GestureDetector(
      onTap: () {
        Get.to(DashboardScreen());
      },
      child: Container(
          height: 52,
          padding: EdgeInsets.symmetric(horizontal: 32.0),
          decoration: BoxDecoration(
            color: Color(0xff1b4066),
            borderRadius: BorderRadius.circular(42),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                "Siguiente",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              Gap(10),
              Container(
                padding: EdgeInsets.all(4.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 0.8),
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: Colors.white,
                  size: 18,
                ),
              ),
            ],
          )),
    );
  }
}
