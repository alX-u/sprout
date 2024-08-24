import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sprout/app/presentation/pages/home/controller/home_bindings.dart';
import 'package:sprout/core/config/routes/pages.dart';
import 'package:sprout/core/config/routes/routes.dart';

class App extends GetView<void> {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.noTransition,
      title: 'Sprout',
      getPages: Pages.pages,
      initialRoute: Routes.home,
      initialBinding: HomeBindings(),
    );
  }
}
