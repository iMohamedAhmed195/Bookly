import 'package:dio/dio.dart';

abstract class Failure{
  final String message;

  Failure(this.message);
}

class ServerFailure extends Failure{
  ServerFailure(super.message);

  factory ServerFailure.fromDioError(DioException e){
      switch(e.type) {
        case DioExceptionType.connectionTimeout:
          return ServerFailure("connection time out with server");

        case DioExceptionType.sendTimeout:
          return ServerFailure("send time out with server");

        case DioExceptionType.receiveTimeout:
          return ServerFailure("receive time out with server");

        case DioExceptionType.badCertificate:
          return ServerFailure("badCertificate  with server");

        case DioExceptionType.badResponse:
          return ServerFailure.fromResponse(e.response!.statusCode!, e.response!.data);
        case DioExceptionType.cancel:
          return ServerFailure("Request to ApiServer was canceled");

        case DioExceptionType.connectionError:
          return ServerFailure("No Internet Connection");

        case DioExceptionType.unknown:
          return ServerFailure("there is an error plz try again");

      }
  }

  factory ServerFailure.fromResponse(int statusCode ,dynamic response){
    if(statusCode == 404) {
      return ServerFailure('your request was not found , please try later');
    }else if(statusCode == 505 ){
      return ServerFailure('there is a problem with server , please try later');
    }else if(statusCode == 400 || statusCode == 401 || statusCode == 403){
      return ServerFailure(response['error']['message']);
    }else{
      return ServerFailure('there is a error plz try again');
    }

  }
}




class CacheFailure extends Failure{
  CacheFailure(super.message);
}
class NetworkFailure extends Failure{
  NetworkFailure(super.message);
}
