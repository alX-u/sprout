import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sprout/app/presentation/pages/home/controller/home_controller.dart';
import 'package:sprout/core/config/env/environment.dart';

class HomeScreenMobileView extends GetView<HomeController> {
  const HomeScreenMobileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Ahora mismo el ambiente es: ${Environment.config.environment}'),
      ),
    );
  }
}
