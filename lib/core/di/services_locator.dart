import 'package:dio/dio.dart';
import 'package:fashion_app/features/auth/presentation/controller/cubit/cubit/sign_in_cubit_cubit.dart';
import 'package:fashion_app/features/auth/presentation/data/data_source/auth_remote_data_source.dart';
import 'package:fashion_app/features/auth/presentation/data/repo/auth_repo_impl.dart';
import 'package:fashion_app/features/auth/presentation/domain/repo/auth_repo.dart';
import 'package:fashion_app/features/auth/presentation/domain/use_cases/get_user_use_case.dart';
import 'package:fashion_app/features/auth/presentation/domain/use_cases/refresh_token_use_case.dart';
import 'package:fashion_app/features/auth/presentation/domain/use_cases/sign_in_use_case.dart';
import 'package:fashion_app/features/home/data/data_source/product_remote_data_source.dart';
import 'package:fashion_app/features/home/data/repo/product_repo_impl.dart';
import 'package:fashion_app/features/home/domain/repo/product_repo.dart';
import 'package:fashion_app/features/home/domain/use_case/product_use_case.dart';
import 'package:fashion_app/features/home/presentation/controller/cubit/cubit/products_cubit.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> setup() async {
  sl.registerLazySingleton<Dio>(() => Dio());

  sl.registerLazySingleton<AuthRemoteDataSource>(
    () => AuthRemoteDataSource(sl()),
  );

  sl.registerLazySingleton<AuthRepository>(() => AuthRepositoryImpl(sl()));

  sl.registerLazySingleton<LoginUseCase>(() => LoginUseCase(sl()));
  sl.registerLazySingleton<GetMeUseCase>(() => GetMeUseCase(sl()));
  sl.registerLazySingleton<RefreshTokenUseCase>(
    () => RefreshTokenUseCase(sl()),
  );

  sl.registerFactory<AuthCubit>(
    () => AuthCubit(
      sl<LoginUseCase>(),
      sl<GetMeUseCase>(),
      sl<RefreshTokenUseCase>(),
    ),
  );
  sl.registerLazySingleton<ProductsRemoteDataSource>(
    () => ProductsRemoteDataSource(sl()),
  );
  sl.registerLazySingleton<ProductsRepository>(
    () => ProductsRepositoryImpl(sl()),
  );
  sl.registerLazySingleton<GetProductsUseCase>(() => GetProductsUseCase(sl()));
  sl.registerFactory<ProductsCubit>(() => ProductsCubit(sl()));
}
