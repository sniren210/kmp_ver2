import 'package:connectivity/connectivity.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:kmp_ver2/kmp_ver2.dart';
import 'package:kmp_ver2/src/repositories/member_type/member_type_provider.dart';
import 'package:kmp_ver2/src/repositories/onboarding/onboarding_provider.dart';
import 'package:nested/nested.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sl = GetIt.instance;

class InitializeApp {
  static init() async {
    final sharedPreferences = await SharedPreferences.getInstance();
  	sl.registerLazySingleton(() => sharedPreferences);
    sl.registerLazySingleton(() => Dio());
    sl.registerLazySingleton(() => Connectivity());
    sl.registerLazySingleton(() => LoggingInterceptor());


    sl.registerLazySingleton(() => NetworkInfo(sl<Connectivity>()));
    sl.registerLazySingleton(() => DioClient(AppConstants.baseUrl, sl<Dio>(), loggingInterceptor: sl<LoggingInterceptor>(), sharedPreferences: sl<SharedPreferences>()));
    
    
    sl.registerLazySingleton(() => AuthDataSource(dioClient: sl<DioClient>()));
    sl.registerLazySingleton(() => MemberTypeDataSource(dioClient: sl<DioClient>()));
    sl.registerLazySingleton(() => OnboardingDataSource(dioClient: sl<DioClient>()));

    // Provider register
    sl.registerLazySingleton(() => ThemeModeSettingProvider(sharedPreferences: sl<SharedPreferences>() ));
    sl.registerLazySingleton(() => LocaleSettingProvider(sharedPreferences: sl<SharedPreferences>() ));   
    sl.registerLazySingleton(() => SplashProvider());

    sl.registerLazySingleton(() => RegisterProvider());   
    sl.registerLazySingleton(() => LoginProvider());   
    sl.registerLazySingleton(() => MemberTypeProvider());   
    sl.registerLazySingleton(() => OnboardingProvider());   
  }

  static List<SingleChildWidget> initProvider() {
    return [
      ChangeNotifierProvider(create: (context) => sl<ThemeModeSettingProvider>()),
      ChangeNotifierProvider(create: (context) => sl<LocaleSettingProvider>()),
      ChangeNotifierProvider(create: (context) => sl<SplashProvider>()),
      ChangeNotifierProvider(create: (context) => sl<RegisterProvider>()),
      ChangeNotifierProvider(create: (context) => sl<LoginProvider>()),
      ChangeNotifierProvider(create: (context) => sl<MemberTypeProvider>()),
      ChangeNotifierProvider(create: (context) => sl<OnboardingProvider>()),

    ];
  }
}
