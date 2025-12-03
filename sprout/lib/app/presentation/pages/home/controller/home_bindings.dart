import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:sprout/app/presentation/pages/home/controller/home_controller.dart';
import 'package:sprout/core/config/logger/dio_logger_interceptor.dart';

class HomeBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() {
      final dio = Dio();
      dio.interceptors.add(DioLoggerInterceptor());
      return dio;
    });

    Get.lazyPut(() => HomeController());
  }
}
