import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';
import 'Routes/AuthRoute.dart';

class BaseRoute {
  Handler get handler {
    final router = Router()
      ..mount('/auth', AuthRoute().handler)
      ..all('/<name|.*>', (Route _) {
        return Response.notFound("Page not found");
      });

    return router;
  }
}
