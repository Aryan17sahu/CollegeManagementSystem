package college.service;

import college.dao.AdminDao;
import college.model.Admin;
import org.springframework.beans.factory.annotation.Autowired;

public class AdminServiceImpl implements AdminService {

    @Autowired
    AdminDao adminDao;

    @Override
    public String insertAdmin(Admin admin) {

        if (adminDao.insertAdmin(admin) > 0) {
            return "Data inserted Sucessfully";
        }else
            return "Something went wrong";

    }
}