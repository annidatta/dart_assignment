mixin LoggerMixin {
  void logMessage(String message) {
    print(message);
  }
}
class User with LoggerMixin {}
class Product with LoggerMixin {}
void main() {
  User u = User();
  Product p = Product();
  u.logMessage("User created");
  p.logMessage("Product created");
}