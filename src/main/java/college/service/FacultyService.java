package college.service;

import college.model.Faculty;

import java.util.List;

public interface FacultyService {

    String insertFaculty(Faculty  faculty);

    public List<Faculty> getAllFacultyDetails();

    public Faculty getFacultyDetailsById(int id);

}
