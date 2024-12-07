package college.dao;

import college.model.Admin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

public class AdminDaoImpl implements AdminDao{
    @Autowired
    JdbcTemplate jdbcTemplate;

    @Override
    public int insertAdmin(Admin admin) {

        String sql="insert into admin(id,username,password,role) values(?,?,?,?)";

        return jdbcTemplate.update(sql,admin.getId(),admin.getName(),admin.getPassword(),admin.getRole());
    }
}
