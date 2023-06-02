import 'package:advise/domain/entities/advice_entity.dart';
import 'package:advise/domain/failures/failures.dart';
import 'package:dartz/dartz.dart';

class AdviceUseCases{
  Future<Either<Failure, AdviceEntity>> getAdvice() async{
    await Future.delayed(Duration(seconds: 3), (){});
    // return right(const AdviceEntity(advice: "advice to test", id: 1));
    return left(ServerFailure());
  }
}