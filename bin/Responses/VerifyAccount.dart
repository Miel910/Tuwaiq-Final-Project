import 'dart:convert';

import 'package:shelf/shelf.dart';
import 'package:supabase/supabase.dart';

import '../ResponseMsg/ResponseMsg.dart';
import '../Supabase/supabase.dart';

verifyAccount(Request req) async {
  try {
    final body = json.decode(await req.readAsString());
    await Supabase().supabase.auth.verifyOTP(
          token: body['otp'],
          type: OtpType.signup,
          email: body['email'],
        );

    return ResponseMsg().successResponse(msg: "Your Email has been confirmed");
  } catch (error) {
    print(error);

    return ResponseMsg()
        .errorResponse(msg: "Your Email has not  been comfired");
  }
}
