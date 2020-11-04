import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';
import 'package:what_lunch_project/model/basemodel.dart';
import 'package:what_lunch_project/model/user.dart';

part 'apiclient.g.dart';

@RestApi(baseUrl: "http://172.16.1.114:9998/")
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}){
    dio.options = BaseOptions(receiveTimeout: 30000, connectTimeout: 30000);
    return _ApiClient(dio, baseUrl: baseUrl);
  }

  @POST("/user/login")
  Future<BaseModel> onLogin(@Body() UserRequest user);
}