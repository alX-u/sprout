import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sprout/app/presentation/pages/home/controller/home_controller.dart';
import 'package:sprout/app/presentation/pages/home/view/home_screen_mobile_view.dart';
import 'package:sprout/app/presentation/pages/home/view/home_screen_tablet_view.dart';

class HomeScreen extends GetResponsiveView<HomeController> {
  HomeScreen({super.key});

  @override
  Widget? phone() {
    return const HomeScreenMobileView();
  }

  @override
  Widget? tablet() {
    return const HomeScreenTabletView();
  }
}
