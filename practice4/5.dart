void main() {
  List<String> friends = [
    "Anni",
    "Riya",
    "Ripa",
    "Asha",
    "Shanta",
    "Sana",
    "Nila",
  ];
  var result = friends.where((name) => name.startsWith("A"));
  print(result);
}