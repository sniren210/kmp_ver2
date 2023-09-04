import 'package:kmp_ver2/kmp_ver2.dart';

class OnboardingDataSource {
  final DioClient dioClient;

  OnboardingDataSource({required this.dioClient});

  Future<OnboardingModel> getList() async {
    final res = await dioClient.get(AppConstants.apiConstant.onboarding);

    if(res.statusCode == 200){
      return OnboardingModel.fromJson(res.data);
    }

    throw Exception();
  }  
}