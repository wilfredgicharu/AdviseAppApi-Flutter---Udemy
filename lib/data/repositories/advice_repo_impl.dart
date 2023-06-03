import 'package:advise/data/datasources/advice_remote_datasource.dart';
import 'package:advise/domain/entities/advice_entity.dart';
import 'package:advise/domain/failures/failures.dart';
import 'package:advise/domain/repositories/advice_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

import '../exceptions/exceptions.dart';

class AdviceRepoImpl implements AdviceRepo{
  AdviceRepoImpl({required this.adviceRemoteDataSource});

  final AdviceRemoteDatasource adviceRemoteDataSource;
  @override
  Future<Either<Failure, AdviceEntity>> getAdviceFromDatasource() async {
    try{
      final result = await adviceRemoteDataSource.getRandomAdviceFromApi();
      return right(result);
  } on ServerException{
    return left(ServerFailure());
  } on CacheException{
    return left(CacheFailure());
  }
  catch(e){
    return left(GeneralFailure());
    }
  }

}