import 'package:advise/data/repositories/advice_repo_impl.dart';
import 'package:advise/domain/entities/advice_entity.dart';
import 'package:advise/domain/failures/failures.dart';
import 'package:dartz/dartz.dart';

import '../repositories/advice_repo.dart';

class AdviceUseCases{
  AdviceUseCases({required this.adviceRepo});
  final AdviceRepo adviceRepo;

  Future<Either<Failure, AdviceEntity>> getAdvice() async{
     return adviceRepo.getAdviceFromDatasource();
  }
}