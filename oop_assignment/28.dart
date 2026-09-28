class Guest {
  String name;
  Guest(this.name);
}
class Room {
  int roomNumber;
  double price;
  bool isBooked = false;
  Room(this.roomNumber, this.price);
}
class Reservation {
  Guest guest;
  Room room;
  Reservation(this.guest, this.room);
  void bookRoom() {
    if (!room.isBooked) {
      room.isBooked = true;
      print("${guest.name} booked Room ${room.roomNumber}");
      print("Price: ${room.price}");
    } else {
      print("Room is already booked.");
    }
  }
  void cancelReservation() {
    room.isBooked = false;
    print("Reservation Cancelled.");
  }
}
void main() {
  Guest guest = Guest("Anni");
  Room room = Room(101, 3000);
  Reservation reservation = Reservation(guest, room);

  reservation.bookRoom();
  reservation.cancelReservation();
}