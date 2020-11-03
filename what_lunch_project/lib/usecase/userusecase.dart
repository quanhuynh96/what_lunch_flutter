import 'package:dio/dio.dart' hide Headers;
import 'package:what_lunch_project/model/basemodel.dart';
import 'package:what_lunch_project/model/baseresponse.dart';
import 'package:what_lunch_project/model/user.dart';
import 'package:what_lunch_project/retrofit/apiclient.dart';
import 'package:what_lunch_project/retrofit/servererror.dart';

class LoginUser {
  Dio dio;
  ApiClient apiClient;

  LoginUser() {
    dio = new Dio();
    apiClient = new ApiClient(dio);
  }

  Future<BaseResponse<BaseModel<UserDTO>>> onLogin(String userName, String password) async {
    BaseModel<UserDTO> response;
    try {
      response = await apiClient.onLogin(UserRequest(userName: userName, password: password));
      print("Response: ${response.code}");
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      return BaseResponse()..setException(ServerError.withError(error: error));
    }
    return BaseResponse()..data = response;
  }
}
