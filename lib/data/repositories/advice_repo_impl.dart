import 'package:advise/data/datasources/advice_remote_datasource.dart';
import 'package:advise/domain/entities/advice_entity.dart';
import 'package:advise/domain/failures/failures.dart';
import 'package:advise/domain/repositories/advice_repo.dart';
import 'package:dartz/dartz.dart';

class AdviceRepoImpl implements AdviceRepo{
  final AdviceRemoteDatasource adviceRemoteDataSource = AdviceRemoteDatasourceImpl();
  @override
  Future<Either<Failure, AdviceEntity>> getAdviceFromDatasource() async {
    final result = await adviceRemoteDataSource.getRandomAdviceFromApi();
    return right(result);
  }

}