import 'package:get/get.dart';
import 'package:sprout/app/presentation/pages/home/controller/home_bindings.dart';
import 'package:sprout/app/presentation/pages/home/home_screen.dart';
import 'package:sprout/core/config/routes/routes.dart';

abstract class Pages {
  static final List<GetPage> pages = [
    GetPage(
        name: Routes.home,
        page: () => HomeScreen(),
        binding: HomeBindings(),
        transition: Transition.fadeIn)
  ];
}
