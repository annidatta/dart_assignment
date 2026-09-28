void creatUser(String name, int age, {bool isActive = true}) {
  print("Name : $name");
  print("Age : $age");
  print("Active : $isActive");
}
void main() {
  creatUser("Anni", 21);
}