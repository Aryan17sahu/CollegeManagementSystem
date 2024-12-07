package college.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

@Repository
public class DateFormatDaoImpl implements DateFormatDao {

    @Autowired
    JdbcTemplate jdbcTemplate;

    @Override
    public void updateLoginTime(String id) {
        DateTimeFormatter formatter = DateTimeFormatter. ofPattern("yyyy MM dd HH:mm:ss");
        String sql = "update admin set lastlogintime=? where id=?";
        int update = jdbcTemplate.update(sql, LocalDateTime.now().format(formatter), id);
        System.out.println(update);
    }

    @Override
    public void updateLogoutTime(String id) {
        DateTimeFormatter formatter = DateTimeFormatter. ofPattern("yyyy MM dd HH:mm:ss");

        String sql = "update admin set lastlogouttime=? where id=?";
        int update = jdbcTemplate.update(sql, LocalDateTime.now().format(formatter), id);
    }
}
