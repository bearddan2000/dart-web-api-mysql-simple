import 'dart:io';
import 'dart:convert';

main() {
  Map json = {'message': 'Hello, world!'};

  HttpServer
      .bind(InternetAddress.anyIPv6, 80)
      .then((server) {
        server.listen((HttpRequest request) {
          request.response.write(json);
          request.response.close();
        });
      });
}
