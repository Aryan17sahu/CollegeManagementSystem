package college.controller;


import college.model.Student;
import college.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;

@Controller
public class StudentController {

    @Autowired
    StudentService studentService;

    @GetMapping("/registerStudent")
    public String facultyForm(Model model){
        model.addAttribute("student", new Student());

        return "studentForm";
    }

    @RequestMapping(value = "/saveStudent", method = RequestMethod.POST)
    @ResponseBody
    public String saveStudent(@Valid @ModelAttribute("student") Student  student, Model model, BindingResult bindingResult) {

        if (!bindingResult.hasErrors()) {
            BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();

            String hashedPassword = passwordEncoder.encode(student.getPassword());
            student.setPassword(hashedPassword);
            String s = studentService.insertStudentDetails(student);


            model.addAttribute("message", s);
            return "msg";
        }
        else
        {
            return "studentForm";
        }

    }

    @RequestMapping("/getAllStudent")
    public String displayAll(Model model) {
        List<Student> list = studentService.getAllStudentDetails();
        model.addAttribute("studentData", list);
        return "displayStudents";
    }


}
