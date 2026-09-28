class Book {
  String title;
  bool _isIssued = false;
  Book(this.title);
  bool get isIssued => _isIssued;
  void issue() {
    _isIssued = true;
  }
  void returnBook() {
    _isIssued = false;
  }
}
class Member {
  String name;
  Member(this.name);
}
class Library {
  List<Book> books = [];
  void addBook(Book book) {
    books.add(book);
  }
  void issueBook(Book book, Member member) {
    if (!book.isIssued) {
      book.issue();
      print("${book.title} issued to ${member.name}");
    } else {
      print("${book.title} is already issued");
    }
  }
  void returnBook(Book book) {
    if (book.isIssued) {
      book.returnBook();
      print("${book.title} returned successfully.");
    } else {
      print("${book.title} was not issued");
    }
  }
}
void main() {
  Book book = Book("Dart Programming");
  Member member = Member("Anni");
  Library library = Library();
  library.addBook(book);
  library.issueBook(book, member);
  library.returnBook(book);
}