class Flyable {
  void fly() {}
}
class Swimable {
  void swim() {}
}
class Duck implements Flyable, Swimable {
  void fly() {
    print("Duck can fly");
  }
  void swim() {
    print("Duck can swim");
  }
}
void main() {
  Duck d = Duck();
  d.fly();
  d.swim();
}