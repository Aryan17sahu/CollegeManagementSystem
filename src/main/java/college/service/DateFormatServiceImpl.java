package college.service;

import college.dao.DateFormatDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class DateFormatServiceImpl implements DateFormatService {


    @Autowired
    DateFormatDao dateFormatDao;

    @Override
    public void updateLoginTime(String id) {
        dateFormatDao.updateLoginTime(id);
    }

    @Override
    public void updateLogoutTime(String id) {
        dateFormatDao.updateLogoutTime(id);
    }
}
