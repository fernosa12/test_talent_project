import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:test_clean_architecture/data/api/courses/courses_api.dart';
import 'package:test_clean_architecture/presentations/audio/cubit/audio_cubit.dart';
import 'package:test_clean_architecture/presentations/course/cubit/course_cubit.dart';

// import '../domain/usecases/change_password_usecase.dart';
// import '../domain/usecases/get_banners_usecase.dart';
// import '../domain/usecases/get_my_searches_usecase.dart';
// import '../domain/usecases/get_saldo_usecase.dart';
// import '../domain/usecases/get_tos_usecase.dart';
// import '../domain/usecases/get_wishlist_usecase.dart';
import '../lib.dart';

// import '../presentations/category/cubit/category_cubit.dart';
// import '../presentations/feedback/cubit/feedback_cubit.dart';
// import '../presentations/search/cubit/search_cubit.dart';
// import '../presentations/transaction/cubit/transaction_cubit.dart';
// import '../presentations/wishlist/cubit/wishlist_cubit.dart';

final di = GetIt.I;

setupInjection() {
  try {
    _utils();
    _datasources();
    _repositories();
    _useCases();
    _cubits();
  } catch (e) {
    print(e);
  }
}

void _datasources() {
  di.registerSingleton<AuthApi>(AuthApiImpl(di()));
  di.registerSingleton<CoursesApi>(CoursesApiImpl(di()));
  di.registerSingleton<AudioApi>(AudioApiImpl(di()));
}

void _repositories() {
  // _repositories
  di.registerSingleton<AuthRepository>(AuthRepositoryImpl(di(), di()));
  di.registerSingleton<CourseRepository>(CourseRepositoryImpl(di(), di()));
  di.registerSingleton<AudioRepository>(AudioRepositoryImpl(di(), di()));
}

void _useCases() {
  // _useCases
  di.registerSingleton<LoginUseCase>(LoginUseCase(di()));
  di.registerSingleton<GetCourseUsecase>(GetCourseUsecase(di()));
  di.registerSingleton<DetailCourseUsecase>(DetailCourseUsecase(di()));
  di.registerSingleton<DetailAudioUsecase>(DetailAudioUsecase(di()));
}

void _cubits() {
  di.registerSingleton<AuthCubit>(AuthCubit(
    di(),
  ));
  di.registerFactory(() => CourseCubit(
        di(),
        di(),
      ));
  di.registerFactory(() => AudioCubit(
        di(),
      ));
}

void _utils() {
  // _utils
  di.registerLazySingleton(
    () {
      final dio = Dio();
      dio.options.baseUrl = AppConfig.baseUrl;
      dio.interceptors.add(DioTokenInterceptor(
        di.call,
        di(),
      ));
      dio.interceptors.add(LogInterceptor());
      return dio;
    },
    // instanceName: 'dio_for_api',
  );
  di.registerLazySingleton(
    () {
      final dio = Dio();
      dio.options.baseUrl = AppConfig.baseUrl;
      dio.interceptors.add(LogInterceptor());
      return dio;
    },
    instanceName: 'dio_for_regular',
  );
  di.registerSingleton(Connectivity());
  di.registerSingleton<AppRouter>(AppRouter());
  di.registerSingleton<NetworkInfo>(NetworkInfoImpl(di()));
}
