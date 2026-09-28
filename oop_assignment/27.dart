class Company {
  String name;
  Company(this.name);
  double calculateSalary() {
    return 0;
  }
}
class Manager extends Company {
  double salary;
  double bonus;
  Manager(String name, this.salary, this.bonus) : super(name);

  @override
  double calculateSalary() {
    return salary + bonus;
  }
}
class Developer extends Company {
  double salary;
  double overtimePay;
  Developer(String name, this.salary, this.overtimePay) : super(name);

  @override
  double calculateSalary() {
    return salary + overtimePay;
  }
}
void main() {
  Manager m = Manager("Anni", 50000, 10000);
  Developer d = Developer("Prantha", 40000, 5000);

  print("Manager: ${m.name}");
  print("Monthly Salary: ${m.calculateSalary()}");

  print("Developer: ${d.name}");
  print("Monthly Salary: ${d.calculateSalary()}");
}