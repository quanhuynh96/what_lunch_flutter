class BaseModel<T> {
  int code;
  T data;

  BaseModel({this.code, this.data});

  factory BaseModel.fromJson(Map<String, dynamic> json){
    return BaseModel(
        code: json["code"],
        data: json["data"]
    );
  }

  Map<String, dynamic> toJson() =>
      {
        "code": code,
        "data": data
      };
}