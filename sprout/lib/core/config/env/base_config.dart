import 'package:sprout/core/config/api/perenual_api.dart';

abstract class BaseConfig {
  String get environment;
  PerenualApi get perenualApiBaseUrl;
}
