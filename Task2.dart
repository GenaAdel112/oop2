class Person {
  String name;
  String address;

  Person(this.name, this.address);

  @override
  String toString() {
    return "Name: $name, Address: $address";
  }
}

class Student extends Person {
  int numCourses = 0;
  List<String> courses = [];
  List<int> grades = [];

  Student(String name, String address) : super(name, address);

  void addCourseGrade(String course, int grade) {
    courses.add(course);
    grades.add(grade);
    numCourses++;
  }

  void printGrades() {
    for (int i = 0; i < numCourses; i++) {
      print("${courses[i]}: ${grades[i]}");
    }
  }

  double getAverageGrades() {
    int sum = 0;

    for (int grade in grades) {
      sum += grade;
    }

    return sum / numCourses;
  }

  @override
  String toString() {
    return "Student: ${super.toString()}";
  }
}

class Teacher extends Person {
  int numCourses = 0;
  List<String> courses = [];

  Teacher(String name, String address) : super(name, address);

  bool addCourse(String course) {
    if (courses.contains(course)) {
      return false;
    }

    courses.add(course);
    numCourses++;
    return true;
  }

  bool removeCourse(String course) {
    if (!courses.contains(course)) {
      return false;
    }

    courses.remove(course);
    numCourses--;
    return true;
  }

  @override
  String toString() {
    return "Teacher: ${super.toString()}";
  }
}