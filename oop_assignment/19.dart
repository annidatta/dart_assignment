abstract class Payment {
  void pay();
}
class CashPayment extends Payment {
  void pay() {
    print("Paid by Cash");
  }
}
class CardPayment extends Payment {
  void pay() {
    print("Paid by Card");
  }
}
void main() {
  CashPayment c = CashPayment();
  CardPayment d = CardPayment();
  c.pay();
  d.pay();
}