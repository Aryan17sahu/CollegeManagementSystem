package college.dao;

import college.model.Faculty;
import college.model.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class StudentDaoImpl implements StudentDao {

    @Autowired
    JdbcTemplate jdbcTemplate;

    @Override
    public int insertStudentDetails(Student student) {

        String sql = "insert into student(id,username,password,firstName,lastName,fathersName,mothersName,dob,email,phone,course,department,role) values(?,?,?,?,?,?,?,?,?,?,?,?,?)";
        return jdbcTemplate.update(sql, student.getId(), student.getName(), student.getPassword(), student.getFirstName(), student.getLastName(), student.getFathersName(), student.getMothersName()
                , student.getDob(), student.getEmail(), student.getPhone(), student.getCourse(), student.getDepartment(), student.getRole());
    }

    @Override
    public List<Student> getStudentDetails() {
        List<Student> list = jdbcTemplate.query("select * from student", new RowMapper<Student>() {
            @Override
            public Student mapRow(ResultSet rs, int rowNum) throws SQLException {

                Student student = new Student();
                student.setId(rs.getString(1));
                student.setName(rs.getString(2));
                student.setPassword(rs.getString(3));
                student.setFirstName(rs.getString(4));
                student.setLastName(rs.getString(5));
                student.setFathersName(rs.getString(6));
                student.setMothersName(rs.getString(7));
                student.setDob(rs.getString(8));
                student.setEmail(rs.getString(9));
                student.setPhone(rs.getString(10));
                student.setCourse(rs.getString(11));
                student.setDepartment(rs.getString(12));

                return student;
            }
        });
        return list;
    }

    @Override
    public Student getStudentDetailsById(int id) {


        String sql = "select * from student where id=?";
        Student student = jdbcTemplate.queryForObject(sql, new RowMapper<Student>() {

            @Override
            public Student mapRow(ResultSet rs, int rowNum) throws SQLException {

                Student student = new Student();
                student.setId(rs.getString(1));
                student.setName(rs.getString(2));
                student.setPassword(rs.getString(3));
                student.setFirstName(rs.getString(4));
                student.setLastName(rs.getString(5));
                student.setFathersName(rs.getString(6));
                student.setMothersName(rs.getString(7));
                student.setDob(rs.getString(8));
                student.setEmail(rs.getString(9));
                student.setPhone(rs.getString(10));
                student.setCourse(rs.getString(11));
                student.setDepartment(rs.getString(12));

                return student;
            }
        }, sql);
        return student;
    }

}
/*
*

    private String id;
    private String name;
    private String password;
    private String firstName;
    private String lastName;
    private String fathersName;
    private String mothersName;
    private String dob;
    private String email;
    private String phone;
    private String course;
    private String department;
    private String role;
* */