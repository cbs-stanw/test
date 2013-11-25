import 'package:unittest/unittest.dart';
import 'dart:html';
import 'dart:async';

var j=0;
var k=0;
main() {
  for (var i=1; i <= 100;i ++) {
    var name = 'test case ${++j}';
    test(name, getOneContactTest);
  }
}

getOneContactTest() {
  HttpRequest.getString('/ws1').then(
      expectAsync1((txt){
        expect(txt,  'Hello');
      }),
      onError: protectAsync1((e) =>
          expect(true, isFalse, reason: 'Should not be reached')));
}