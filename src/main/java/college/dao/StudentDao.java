package college.dao;

import college.model.Student;

import java.util.List;

public interface StudentDao {

    public int insertStudentDetails(Student student);

    public List<Student> getStudentDetails();

    public Student getStudentDetailsById(int id);
}
