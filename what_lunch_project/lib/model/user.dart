class UserDTO {
  int userId;
  String userName;

  UserDTO({this.userId, this.userName});

  factory UserDTO.fromJson(Map<String, dynamic> json){
    return UserDTO(
        userId: json["id"],
        userName: json["name"]
    );
  }

  Map<String, dynamic> toJson() =>
      {
        "id": userId,
        "name": userName
      };
}

class UserRequest {
  String userName;
  String password;

  UserRequest({this.userName, this.password});

  factory UserRequest.fromJson(Map<String, dynamic> json){
    return UserRequest(
        userName: json["user_name"],
        password: json["password"]
    );
  }

  Map<String, dynamic> toJson() =>
      {
        "user_name": userName,
        "password": password
      };
}