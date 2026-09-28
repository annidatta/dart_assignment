abstract class Person {
  String name;
  Person(this.name);
  void showInfo();
}
class Student extends Person {
  int _id;
  double _cgpa;
  Student(String name, this._id, this._cgpa) : super(name);
  int get id => _id;
  double get cgpa => _cgpa;
  set cgpa(double value) {
    if (value >= 0 && value <= 4) {
      _cgpa = value;
    }
  }
  @override
  void showInfo() {
    print("Student Name: $name");
    print("ID: $_id");
    print("CGPA: $_cgpa");
  }
}
class Course {
  String courseName;
  int credit;
  Course(this.courseName, this.credit);
  void showCourse() {
    print("Course: $courseName");
    print("Credit: $credit");
  }
}
class Enrollment {
  Student student;
  Course course;
  Enrollment(this.student, this.course);
  void showEnrollment() {
    print("\nEnrollment Information:");
    student.showInfo();
    course.showCourse();
  }
}
class GraduateStudent extends Student {
  String thesisTitle;
  GraduateStudent(
      String name, int id, double cgpa,
      this.thesisTitle) : super(name, id, cgpa);

  @override
  void showInfo() {
    print("Graduate Student: $name");
    print("ID: $id");
    print("CGPA: $cgpa");
    print("Thesis: $thesisTitle");
  }
}
void main() {
  Student s1 = Student("Anni", 101, 3.70);
  Course c1 = Course("Object Oriented Programming", 3);
  Enrollment e1 = Enrollment(s1, c1);
  e1.showEnrollment();
  print("\n--- Polymorphism ---");
  Person student = GraduateStudent("Anni", 102, 3.80, "Artificial Intelligence");
  student.showInfo();
}