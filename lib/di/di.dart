import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

// import '../domain/usecases/change_password_usecase.dart';
// import '../domain/usecases/get_banners_usecase.dart';
// import '../domain/usecases/get_my_searches_usecase.dart';
// import '../domain/usecases/get_saldo_usecase.dart';
// import '../domain/usecases/get_tos_usecase.dart';
// import '../domain/usecases/get_wishlist_usecase.dart';
import '../lib.dart';
import '../presentations/auth/auth.dart';
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
  // di.registerSingleton<ProfileApi>(ProfileApiImpl(di()));
  // di.registerSingleton<BankApi>(BankApiImpl(di()));
  // // di.registerSingleton<ScurityApi>(ScurityApiImpl(di()));
  // di.registerSingleton<PersonalDataApi>(PersonalDataApiImpl(di()));
  // di.registerSingleton<AddressApi>(AddressApiImpl(di()));
  // di.registerSingleton<ServiceApi>(ServiceApiImpl(di()));
  // di.registerSingleton<CategoryApi>(CategoryApiImpl(di()));
  // di.registerSingleton<BannerApi>(BannerApiImpl(di()));
  // di.registerSingleton<TransactionsBuyerApi>(TransactionsApiBuyerImpl(di()));
  // di.registerSingleton<FeedbackApi>(FeedbackApiImpl(di()));
  // di.registerSingleton<ReplyTemplateApi>(ReplyTemplateApiImpl(di()));
  // di.registerSingleton<SaldoApi>(SaldoApiImpl(di()));
  // di.registerSingleton<WishlistApi>(WishlistApiImpl(di()));
}

void _repositories() {
  // _repositories
  di.registerSingleton<AuthRepository>(AuthRepositoryImpl(di(), di()));
  // di.registerSingleton<ProfileRepository>(ProfileRepositoryImpl(di(), di()));
  // di.registerSingleton<BankRepository>(BankRepositoryImpl(di(), di()));
  // di.registerSingleton<PersonalDataRepository>(
  //     PersonalDataRepositoryImpl(di(), di()));
  // di.registerSingleton<AddressRepository>(AddressRepositoryImpl(di(), di()));
  // // di.registerSingleton<ScurityRepository>(ScurityRepositoryImpl(di(), di()));
  // di.registerSingleton<ServicesRepository>(ServiceRepositoryImpl(di(), di()));
  // di.registerSingleton<CategoryRepository>(CategoryRepositoryImpl(di(), di()));
  // di.registerSingleton<BannerRepository>(BannerRepositoryImpl(di(), di()));
  // di.registerSingleton<TransactionsRepository>(
  //     TransactionsBuyerRepositoryImpl(di(), di()));
  // di.registerSingleton<FeedbackRepository>(FeedbackRepositoryImpl(di(), di()));
  // di.registerSingleton<ReplyTemplateRepository>(
  //     ReplyTemplateRepositoryImpl(di(), di()));
  // di.registerSingleton<SaldoRepository>(SaldoRepositoryImpl(di(), di()));
  // di.registerSingleton<WishlistRepository>(WishlistRepositoryImpl(di(), di()));
}

void _useCases() {
  // _useCases
  di.registerSingleton<LoginUseCase>(LoginUseCase(di()));
  // di.registerSingleton<ChangePasswordUsecase>(ChangePasswordUsecase(di()));
  // di.registerSingleton<ForgotPasswordUsecase>(ForgotPasswordUsecase(di()));
  // di.registerSingleton<RegisterUsecase>(RegisterUsecase(di()));

  /// profile
//   di.registerSingleton<GetProfileUsecase>(GetProfileUsecase(di()));

//   //profile setting personal data
//   di.registerSingleton<UpdatePersonalDataUseCase>(
//       UpdatePersonalDataUseCase(di()));

//   //profile setting scurity
//   di.registerSingleton<GetOtpUseCase>(GetOtpUseCase(di()));

//   //profile setting bank
//   di.registerSingleton<GetBankUserUsecase>(GetBankUserUsecase(di()));
//   di.registerSingleton<GetRekeningUsecase>(GetRekeningUsecase(di()));
//   di.registerSingleton<AddRekeningUsecase>(AddRekeningUsecase(di()));

// //profile setting address
//   di.registerSingleton<GetAddressUsecase>(GetAddressUsecase(di()));
//   di.registerSingleton<AddAddressUserUsecase>(AddAddressUserUsecase(di()));
//   di.registerSingleton<DeleteAddressUserUsecase>(
//       DeleteAddressUserUsecase(di()));
//   di.registerSingleton<EditAddressUsecase>(EditAddressUsecase(di()));
//   di.registerSingleton<SetMainAddressUsecase>(SetMainAddressUsecase(di()));

//   /// services
//   di.registerSingleton(GetPopularServicesUsecase(di()));
//   di.registerSingleton(GetServicesUsecase(di()));
//   di.registerSingleton(GetOurServiceUsecase(di()));
//   di.registerSingleton(GetRecommendedServicesUsecase(di()));
//   di.registerSingleton(GetMySearchesUsecase(di()));
//   di.registerSingleton(GetTosUsecase(di()));

//   /// categories
//   di.registerSingleton(GetCategoriesUsecase(di()));
//   di.registerSingleton(GetSubCategoryUsecase(di()));

//   // transactions
//   di.registerSingleton(GetListTransactionsBuyerUsecase(di()));

// //Ulasan Buyer
//   di.registerSingleton(GetNotYetReviewedUsecase(di()));
//   di.registerSingleton(GetMyFeedbackUsecase(di()));
//   di.registerSingleton(GetSellerFeedbackUsecase(di()));
//   di.registerSingleton(GetDetailNotYetReviewedUsecase(di()));
//   di.registerSingleton(GetDetailMyFeedbackUsecase(di()));
//   di.registerSingleton(GetDetailSellerReviewUsecase(di()));

//   /// banner
//   di.registerSingleton(GetBannersUsecase(di()));

//   // reply template
//   di.registerSingleton(GetReplyTemplateUsecase(di()));
//   di.registerSingleton(AddReplyTemplateUsecase(di()));
//   di.registerSingleton(EditReplyTemplateUsecase(di()));
//   di.registerSingleton(SetPrimaryReplyTemplateUsecase(di()));
//   di.registerSingleton(DeleteReplyTemplateUsecase(di()));

//   // wishlist
//   di.registerSingleton(GetWishlistUsecase(di()));
//   di.registerSingleton(AddWishlistUsecase(di()));
//   di.registerSingleton(DeleteWishlistUsecase(di()));

//   /// saldo
//   di.registerSingleton(GetSaldoUsecase(di()));
}

void _cubits() {
  di.registerSingleton<AuthCubit>(AuthCubit(
    di(),
  ));
  // di.registerSingleton<SettingAddressProfileCubit>(
  //     SettingAddressProfileCubit(di(), di(), di(), di()));

  // di.registerSingleton<SettingBankProfileCubit>(SettingBankProfileCubit(
  //   di(),
  //   di(),
  //   di(),
  // ));
  // di.registerSingleton<TransactionCubit>(TransactionCubit(
  //   di(),
  // ));
  // di.registerSingleton<TermOfServiceCubit>(TermOfServiceCubit(
  //   di(),
  // ));

  // di.registerFactory(() => CategoryCubit(di(), di()));
  // di.registerFactory(() => ServicesCubit(di()));
  // di.registerFactory(() => SearchCubit());
  // di.registerSingleton(WishlistCubit(di(), di(), di()));
  // di.registerSingleton<FeedbackCubit>(FeedbackCubit(
  //   di(),
  //   di(),
  //   di(),
  //   di(),
  //   di(),
  //   di(),
  // ));
  // di.registerSingleton<SellerReplyTemplateCubit>(
  //     SellerReplyTemplateCubit(di(), di(), di(), di(), di()));
  // // di.registerFactory<ProfileCubit>()  // di.registerSingleton<AddSettingBankCubit>(AddSettingBankCubit(
  // //   di(),
  // // ));
  // // di.registerFactory<ProfileCubit>()
  // di.registerFactory(() => HomeCubit(di(), di(), di(), di(), di(), di(), di()));
  // di.registerFactory(() => TermOfServiceCubit(di()));
}

void _utils() {
  // _utils
  di.registerLazySingleton(
    () {
      final dio = Dio();
      dio.options.baseUrl = AppConfig.baseUrl;
      dio.interceptors.add(DioTokenInterceptor(di.call, di()));
      dio.interceptors.add(LogInterceptor());
      return dio;
    },
    // instanceName: 'dio_for_api',
  );
  // di.registerLazySingleton(
  //   () {
  //     final dio = Dio();
  //     dio.options.baseUrl = AppConfig.baseUrl;
  //     dio.interceptors.add(LogInterceptor());
  //     return dio;
  //   },
  //   instanceName: 'dio_for_regular',
  // );
  di.registerSingleton(Connectivity());
  di.registerSingleton<AppRouter>(AppRouter());
  di.registerSingleton<NetworkInfo>(NetworkInfoImpl(di()));
}
