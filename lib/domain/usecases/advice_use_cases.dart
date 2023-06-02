import 'package:advise/data/repositories/advice_repo_impl.dart';
import 'package:advise/domain/entities/advice_entity.dart';
import 'package:advise/domain/failures/failures.dart';
import 'package:dartz/dartz.dart';

class AdviceUseCases{
  final adviceRepo = AdviceRepoImpl();

  Future<Either<Failure, AdviceEntity>> getAdvice() async{
     return adviceRepo.getAdviceFromDatasource();
  }
}