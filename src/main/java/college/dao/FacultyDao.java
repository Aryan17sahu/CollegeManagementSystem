package college.dao;

import college.model.Faculty;
import college.model.Student;

import java.util.List;

public interface FacultyDao {

    public int insertFaculty(Faculty faculty);

    public List<Faculty> getFacultyDetails();

    public Faculty getFacultyDetailsById(int id);
}
