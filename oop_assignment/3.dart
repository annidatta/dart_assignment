class Book {
  String title;
  String subtitle;
  String author;
  Book(this.title, this.subtitle, this.author);
}
void main() {
  Book b = Book("Dart", "Learn Dart", "John");

  print("Title: ${b.title}");
  print("Subtitle: ${b.subtitle}");
  print("Author: ${b.author}");
}