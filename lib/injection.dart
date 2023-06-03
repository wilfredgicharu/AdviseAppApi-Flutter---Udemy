import 'package:advise/application/pages/advice/cubit/advicer_cubit.dart';
import 'package:advise/data/datasources/advice_remote_datasource.dart';
import 'package:advise/domain/repositories/advice_repo.dart';
import 'package:advise/domain/usecases/advice_use_cases.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'data/repositories/advice_repo_impl.dart';

final sl = GetIt.instance;

Future<void> init() async {
  /// Application layer
  sl.registerFactory(() => AdvicerCubit(adviceUseCases: sl()));

  ///domain layer
  sl.registerFactory(() => AdviceUseCases(adviceRepo: sl()));

  /// data layer
  sl.registerFactory<AdviceRepo>(
      () => AdviceRepoImpl(adviceRemoteDataSource: sl()));
  sl.registerFactory<AdviceRemoteDatasourceImpl>(
      () => AdviceRemoteDatasourceImpl(client: sl()));

  ///external
  sl.registerLazySingleton(() => http.Client());
}
