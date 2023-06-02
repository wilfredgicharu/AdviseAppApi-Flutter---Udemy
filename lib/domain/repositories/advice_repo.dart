import 'package:advise/domain/entities/advice_entity.dart';
import 'package:advise/domain/failures/failures.dart';
import 'package:dartz/dartz.dart';

abstract class AdviceRepo{
  Future<Either<Failure, AdviceEntity>> getAdviceFromDatasource();
}