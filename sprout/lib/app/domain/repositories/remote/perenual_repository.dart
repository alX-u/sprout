import 'package:either_dart/either.dart';
import 'package:sprout/core/config/error/failure.dart';

abstract class PerenualRepository {
  Future<Either<Failure, Map<String, dynamic>>> speciesList();
}
