import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:mobx_setup/model/error_response_model.dart';
import 'package:mobx_setup/common/string_res.dart';
import 'package:mobx_setup/local_data/shared_preference.dart';

class ApiController {
  static const username = 'app@soukdirect.com';
  static const password = 'liNl2Et83EK756j8ewc4hd7dMzsd1Suh';
  var auth = 'Basic ' + base64Encode(utf8.encode('$username:$password'));
  static const baseUrl = 'http://soukdirect.com/api/';

  static final ApiController _apiController = ApiController._internal();
  Dio _dio;

  factory ApiController() {
    _apiController.prepareRequest();
    _apiController.getUserIdFromSp();
    return _apiController;
  }

  ApiController._internal();

  void prepareRequest() {
    BaseOptions dioOptions = BaseOptions(
      baseUrl: baseUrl,
      contentType: Headers.jsonContentType,
      responseType: ResponseType.json,
      headers: {'authorization': auth},
    );

    _dio = Dio(dioOptions);

    _dio.interceptors.add(LogInterceptor(responseBody: true));
  }

  getUserIdFromSp() async {
    String userId = await getUserId();
    print('userId in api controller $userId');
  }

  ErrorResponse _handleError(DioError error) {
    if (error.type == DioErrorType.DEFAULT &&
        error.error != null &&
        error.error is SocketException) {}

    ErrorResponse errorResponse = ErrorResponse();

    switch (error.type) {
      case DioErrorType.CANCEL:
        return ErrorResponse(
          errors: [Error(detail: Strings.errorRequestCancelled)],
        );
        break;
      case DioErrorType.RESPONSE:
        if (error.response != null && error.response.data != null) {
          try {
            errorResponse = ErrorResponse.fromJson(error.response.data);
          } catch (e) {
            errorResponse =
                ErrorResponse(errors: [Error(detail: Strings.errorGeneral)]);
          }
        } else {
          errorResponse =
              ErrorResponse(errors: [Error(detail: Strings.errorGeneral)]);
        }

        break;
      case DioErrorType.CONNECT_TIMEOUT:
        errorResponse =
            ErrorResponse(errors: [Error(detail: Strings.serverTimeout)]);
        break;
      case DioErrorType.RECEIVE_TIMEOUT:
        errorResponse =
            ErrorResponse(errors: [Error(detail: Strings.serverTimeout)]);
        break;
      case DioErrorType.SEND_TIMEOUT:
        errorResponse =
            ErrorResponse(errors: [Error(detail: Strings.serverTimeout)]);
        break;
      case DioErrorType.DEFAULT:
        errorResponse =
            ErrorResponse(errors: [Error(detail: Strings.somethingWentWrong)]);
        break;
    }
    return errorResponse;
  }

  /// post
// Future<SignUpResponseModel> signUpApi({Map param}) async {
//   try {
//     Response response = await _dio.post(ApiEndPoint.signUpUrl, data: param);
//     return SignUpResponseModel.fromJson(response.data);
//   } on DioError catch (e) {
//     throw _handleError(e);
//   }
// }

  /// put
// Future<AddToCartResponseModel> addToCartApi({Map params}) async {
//   try {
//     Response response = await _dio
//         .put(ApiEndPoint.cart + '/${appState.userId}', data: params);
//     return AddToCartResponseModel.fromJson(response.data);
//   } on DioError catch (e) {
//     throw _handleError(e);
//   }
// }

  ///get
// Future<GetCartResponseModel> getCartApi() async {
//   try {
//     Response response = await _dio
//         .get(ApiEndPoint.cart + '&user_id=${appState.userId}');
//     return GetCartResponseModel.fromJson(response.data);
//   } on DioError catch (e) {
//     throw _handleError(e);
//   }
// }

  ///delete
// Future<ClearCartResponseModel> clearCartApi({Map params}) async {
//   try {
//     Response response = await _dio
//         .delete(ApiEndPoint.cartExt + '/${appState.userId}',data: params);
//     return ClearCartResponseModel.fromJson(response.data);
//   } on DioError catch (e) {
//     throw _handleError(e);
//   }
// }

}
