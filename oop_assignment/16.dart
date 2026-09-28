abstract class Appliance {
  void turnOn();
  void turnOff();
}
class Fan extends Appliance {
  void turnOn() {
    print("Fan is ON");
  }
  void turnOff() {
    print("Fan is OFF");
  }
}
void main() {
  Fan f = Fan();
  f.turnOn();
  f.turnOff();
}