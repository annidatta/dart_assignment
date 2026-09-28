class Notification {
  String displayNotification() {
    return "Notification";
  }
}
class EmailNotification extends Notification {
  @override
  String displayNotification() {
    return "Email";
  }
}
class SMSNotification extends Notification {
  @override
  String displayNotification() {
    return "SMS";
  }
}
void main() {
  print(EmailNotification().displayNotification());
  print(SMSNotification().displayNotification());
}