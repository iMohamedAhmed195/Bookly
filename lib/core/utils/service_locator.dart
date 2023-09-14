import 'package:booklyy/core/utils/api_service.dart';
import 'package:booklyy/features/home_feature/data/data_source/home_local_data_source.dart';
import 'package:booklyy/features/home_feature/data/data_source/home_remote_data_source.dart';
import 'package:booklyy/features/home_feature/data/repos/home_repo_implement.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(
    ApiService(
      Dio(),
    ),
  );
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(
      homeRemoteDataSource:  HomeRemoteDataSourceImp(getIt.get<ApiService>()),
      homeLocalDataSource: HomeLocalDataSourceImp()));
}
