import 'package:booklyy/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

abstract class UseCases<Type , Param>{
  Future<Either<Failure , Type>> call ([Param param]);
}
class NoParam{}
