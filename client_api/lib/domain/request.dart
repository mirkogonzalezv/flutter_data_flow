import 'package:client_api/domain/models/enums/http_methods.dart';

class RequestApi {
  final String url;
  final String method;
  final Map<String, dynamic>? queryParameters;
  final Map<String, dynamic>? headers;
  final dynamic body;

  RequestApi(
      {required this.url,
      required this.method,
      this.queryParameters,
      this.headers,
      this.body});

  factory RequestApi.get(
    String url, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
  }) {
    return RequestApi(
        url: url,
        method: HttpMethods.get,
        headers: headers,
        queryParameters: queryParameters);
  }

  factory RequestApi.post(String url,
      {Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? headers,
      dynamic body}) {
    return RequestApi(
        url: url,
        method: HttpMethods.post,
        headers: headers,
        queryParameters: queryParameters,
        body: body);
  }

  factory RequestApi.put(String url,
      {Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? headers,
      dynamic body}) {
    return RequestApi(
        url: url,
        method: HttpMethods.put,
        headers: headers,
        queryParameters: queryParameters,
        body: body);
  }

  factory RequestApi.patch(String url,
      {Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? headers,
      dynamic body}) {
    return RequestApi(
        url: url,
        method: HttpMethods.patch,
        headers: headers,
        queryParameters: queryParameters,
        body: body);
  }

  factory RequestApi.delete(
    String url, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
  }) {
    return RequestApi(
        url: url,
        method: HttpMethods.delete,
        headers: headers,
        queryParameters: queryParameters);
  }
}
