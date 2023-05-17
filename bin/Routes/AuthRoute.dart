import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import '../Responses/createAccount.dart';
import '../Responses/verifyAccount.dart';
import '../Responses/resetPassword.dart';
import '../Responses/changeEmail.dart';

class AuthRoute {
  Handler get handler {
    final router = Router()
      ..post('/create_account', createAccount)
      ..post('/verify_account', verifyAccount)
      ..post('/reset_password', resetPassword)
      ..post('/change_email', changeEmail);

    return router;
  }
}
