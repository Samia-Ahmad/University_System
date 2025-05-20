
import '../models/course.dart';
import '../models/student.dart';

class RegistrationController {
  List<Student> students = [];
  List<Course> Courses = [];

  void addStudent(Student student) {
   students.add(student);
   print("the student added succesfuly to the system");
  }

  void addCourses(Course course) {
   Courses.add(course);
   print("the course added succesfuly to the system");
  }

  void enrollStudent(String studentId , String courseID) {
   final student = students.firstWhere((s) => s.id == studentId , 
   orElse: () => throw Exception("Studen with id: $studentId not found"),);

  }
}