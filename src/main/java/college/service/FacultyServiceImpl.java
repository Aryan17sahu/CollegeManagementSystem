package college.service;

import college.dao.AdminDao;
import college.dao.FacultyDao;
import college.model.Admin;
import college.model.Faculty;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class FacultyServiceImpl implements FacultyService {

    @Autowired
    FacultyDao facultyDao;

    @Override
    public String insertFaculty(Faculty faculty) {

        if (facultyDao.insertFaculty(faculty) > 0) {
            return "Data inserted Sucessfully";
        }else
            return "Something went wrong";

    }

    @Override
    public List<Faculty> getAllFacultyDetails() {
        return facultyDao.getFacultyDetails();
    }

    @Override
    public Faculty getFacultyDetailsById(int id) {
        return facultyDao.getFacultyDetailsById(id);
    }
}
