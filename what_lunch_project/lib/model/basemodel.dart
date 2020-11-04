import 'package:what_lunch_project/model/user.dart';

class BaseModel {
  int code;
  UserDTO data;

  BaseModel({this.code, this.data});

  factory BaseModel.fromJson(Map<String, dynamic> json){
    return BaseModel(
        code: json["code"],
        data: UserDTO.fromJson(json['data'])
    );
  }

  Map<String, dynamic> toJson() =>
      {
        "code": code,
        "data": data
      };
}