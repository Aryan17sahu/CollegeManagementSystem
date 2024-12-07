package college.service;

import college.dao.FacultyDao;
import college.dao.StudentDao;
import college.model.Faculty;
import college.model.Student;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class StudentServiceImpl implements StudentService {

    @Autowired
    StudentDao studentDao;

    @Override
    public String insertStudentDetails(Student student) {

        if (studentDao.insertStudentDetails(student) > 0) {
            return "Data inserted Sucessfully";
        } else
            return "Something went wrong";
    }

    @Override
    public List<Student> getAllStudentDetails() {
        return studentDao.getStudentDetails();
    }

    @Override
    public Student getStudentDetailsById(int id) {
        return studentDao.getStudentDetailsById(id);
    }


}
