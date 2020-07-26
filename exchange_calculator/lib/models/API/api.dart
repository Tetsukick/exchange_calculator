import 'package:dio/dio.dart';

class APIRequest<T> {
  final Dio _dio = Dio();
  final String _baseUrl = 'https://api.exchangeratesapi.io';

  Future<ApiResponse<T>> request({API type, Map<String, dynamic> params}) async {
    try {
      final response = await _dio.get<T>(
        _baseUrl + type.path,
        queryParameters: params,
      );
      return _returnResponse(response);
    } on Exception catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      return ApiResponse.error(error.toString());
    }
  }

  ApiResponse<T> _returnResponse(Response response) {
    print(response);
    switch (response.statusCode) {
      case 200:
        return ApiResponse.completed(response.data as T);
      default:
        return ApiResponse.error(response.statusMessage);
    }
  }
}

enum API {
  getRate
}
extension APIType on API {

  String get path {
    switch(this) {
      case API.getRate:
        return '/latest';
    }
  }

}

class ApiResponse<T> {
  ApiResponse.stopped() : status = Status.stopped;
  ApiResponse.loading(this.message) : status = Status.loading;
  ApiResponse.completed(this.data) : status = Status.completed;
  ApiResponse.error(this.message) : status = Status.error;

  Status status;
  T data;
  String message;

  @override
  String toString() {
    return 'Status : $status \n Message : $message \n Data : $data';
  }
}

enum Status {
  stopped,
  loading,
  completed,
  error
}