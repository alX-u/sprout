import 'package:either_dart/either.dart';
import 'package:sprout/core/config/error/failure.dart';

abstract class UseCase<Response, Params> {
  Future<Either<Failure, Response>> call(Params params);
}
