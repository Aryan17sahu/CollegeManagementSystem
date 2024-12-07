package college.service;

import college.model.Faculty;
import college.model.Student;

import java.util.List;

public interface StudentService {

    String insertStudentDetails(Student student);

    public List<Student> getAllStudentDetails();

    public Student getStudentDetailsById(int id);
}
