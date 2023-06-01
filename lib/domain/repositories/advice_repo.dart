import 'package:advise/domain/entities/advice_entity.dart';

abstract class AdviceRepo{
  Future<Either<Failure, AdviceEntity>> getAdviceFromDatasource();
}