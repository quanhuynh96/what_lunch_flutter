import 'package:what_lunch_project/retrofit/servererror.dart';

class BaseResponse<T> {
  ServerError _error;
  T data;

  setException(ServerError error) {
    _error = error;
  }

  setData(T data) {
    this.data = data;
  }

  get getException {
    return _error;
  }
}