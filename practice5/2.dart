import 'dart:io';

void main() {
  var file = File('hello.txt');
  file.writeAsStringSync('\nAnni', mode: FileMode.append);
  print('Friend name appended to hello.txt');
}