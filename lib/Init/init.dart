import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../Service/api/api_client.dart';
import '../Utlis/AppConstants.dart';


Future<void> init() async {

  final sharedPreferences=await SharedPreferences.getInstance();
  //Shared_preferences
  Get.lazyPut(() => sharedPreferences);
  //API
  Get.lazyPut(() => ApiClient(main_BaseUrl: AppConstants.BASE_URL, sharedPre: Get.find()));



}
