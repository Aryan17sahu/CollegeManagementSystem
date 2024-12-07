package college.dao;

import college.model.Faculty;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class FacultyDaoImpl implements FacultyDao{

    @Autowired
    JdbcTemplate jdbcTemplate;

    @Override
    public int insertFaculty(Faculty faculty) {

        String sql = "insert into faculty(id,username,password,department,courses_taught,email,phone_number,role) values(?,?,?,?,?,?,?,?)";

        return jdbcTemplate.update(sql, faculty.getId(), faculty.getName(), faculty.getPassword(), faculty.getDepartment(), faculty.getCourses_taught(), faculty.getEmail(), faculty.getPhone_number(), faculty.getRole());
    }

    @Override
    public List<Faculty> getFacultyDetails() {
        List<Faculty> list = jdbcTemplate.query("select * from faculty", new RowMapper<Faculty>() {
            @Override
            public Faculty mapRow(ResultSet rs, int rowNum) throws SQLException {

                Faculty  faculty = new Faculty();
                faculty.setId(rs.getString(1));
                faculty.setName(rs.getString(2));
                faculty.setPassword(rs.getString(3));
                faculty. setDepartment(rs.getString(4));
                faculty.setCourses_taught(rs.getString(5));
                faculty.setEmail(rs.getString(6));
                faculty.setPhone_number(rs.getString(7));
                faculty.setRole(rs.getString(8));

                return faculty;
            }
        });
        return list;
    }

    @Override
    public Faculty getFacultyDetailsById(int id) {


        String sql = "select * from faculty where id=?";
        Faculty faculty = jdbcTemplate.queryForObject(sql, new RowMapper<Faculty>() {

            @Override
            public Faculty mapRow(ResultSet rs, int rowNum) throws SQLException {
                Faculty faculty = new Faculty();
                faculty.setId(rs.getString(1));
                faculty.setName(rs.getString(2));
                faculty.setPassword(rs.getString(3));
                faculty.setDepartment(rs.getString(4));
                faculty.setCourses_taught(rs.getString(5));
                faculty.setEmail(rs.getString(6));
                faculty.setPhone_number(rs.getString(7));
                faculty.setRole(rs.getString(8));

                return faculty;
            }
        }, id);
        return faculty;
    }
}


