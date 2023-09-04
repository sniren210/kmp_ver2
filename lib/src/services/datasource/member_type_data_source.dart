import 'package:kmp_ver2/kmp_ver2.dart';

class MemberTypeDataSource {
  final DioClient dioClient;

  MemberTypeDataSource({required this.dioClient});

  Future<ListMemberType> getList() async {
    final res = await dioClient.get(AppConstants.apiConstant.memberList);

    if(res.statusCode == 200){
      return ListMemberType.fromJson(res.data);
    }

    throw Exception();
  }  
}