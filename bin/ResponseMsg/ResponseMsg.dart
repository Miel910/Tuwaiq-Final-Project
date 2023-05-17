import 'dart:convert';
import 'package:shelf/shelf.dart';

class ResponseMsg {
  errorResponse({required String msg}) {
    return Response.badRequest(
      body: json.encode({'msg': msg, 'statusCode': 400}),
      headers: {'content-type': 'application/json'},
    );
  }

  successResponse({required String msg, List? data}) {
    return Response.ok(
      json.encode({'msg': msg, 'statusCode': 200, 'data': data}),
      headers: {'content-type': 'application/json'},
    );
  }
}