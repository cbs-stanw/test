library clearbridge.server;

import "dart:io";
import "package:stream/stream.dart";

void main(List<String> rawArgs) {

    ServerSocket.bind("localhost", 9111)
    .then((ServerSocket serverSocket){
      new StreamServer(uriMapping:{
        'get:/ws1' : (HttpConnect connect) => connect.response.write('Hello')
      })
      .startOn(serverSocket);
    });
}
