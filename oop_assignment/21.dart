enum OrderStatus {
  pending,
  shipped,
  delivered
}
void main() {
  OrderStatus status = OrderStatus.shipped;
  if (status == OrderStatus.pending) {
    print("Order is pending");
  } else if (status == OrderStatus.shipped) {
    print("Order is shipped");
  } else {
    print("Order is delivered");
  }
}