import 'package:get/get.dart';
import '../../Utlis/AppConstants.dart';
import '../api/api_client.dart';

class UserProfileRepo extends GetxService {

  ApiClient apiClient;

  UserProfileRepo({required this.apiClient});

  Future<Response> getUserInfo() async {
    return await apiClient.getData(AppConstants.USER_INFO);
  }
}
