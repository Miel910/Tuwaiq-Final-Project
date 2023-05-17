import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';
import '../Response/Auth/createResponse.dart';

class AuthRoute {
  Handler get handler {
    final router = Router()..post('/create_account', createResponse);

    return router;
  }
}
