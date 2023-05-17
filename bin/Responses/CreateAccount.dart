import 'dart:convert';

import 'package:shelf/shelf.dart';
import 'package:supabase/supabase.dart';

import '../ResponseMsg/ResponseMsg.dart';
import '../Supabase/supabase.dart';

createAccount(Request req) async {
  try {
    final body = json.decode(await req.readAsString());
    print(body);

    final supabaseVariable = Supabase().supabase.auth;
    UserResponse userInfo = await supabaseVariable.admin.createUser(
      AdminUserAttributes(email: body['email'], password: body['password']),
    );

    await supabaseVariable.signInWithOtp(email: body['email']);

    await Supabase().supabase.from("users").insert({"email": body['email']});

    return ResponseMsg()
        .successResponse(msg: "Your account has been created succesfully!");
  } catch (error) {
    print(error);

    return ResponseMsg()
        .errorResponse(msg: "Please enter your email and password.");
  }
}
