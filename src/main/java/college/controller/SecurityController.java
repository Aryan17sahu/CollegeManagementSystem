package college.controller;

import college.model.Faculty;
import college.model.Student;
import college.service.DateFormatService;
import college.service.FacultyService;
import college.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class SecurityController {

    @Autowired
    FacultyService facultyService;
    @Autowired
    StudentService  studentService;

    @Autowired
    DateFormatService dateFormatService;

    @RequestMapping(value = "/signIn",method = RequestMethod.GET)
    public String login(){
        return "login";
    }
    @RequestMapping(value = "/loginFail",method = RequestMethod.GET)
    public String loginError(){

        return "redirect:/index.jsp";
    }
    @RequestMapping(value = "/logOut",method = RequestMethod.GET)
    public String logout(Model model,HttpServletRequest request, HttpSession session){
        dateFormatService.updateLogoutTime(session.getAttribute("id").toString());
        session.invalidate();
        String errorMessage = "You have been logged out successfully";
        model.addAttribute("message", errorMessage);
        model.addAttribute("error", true);
        return "login";
    }

    @RequestMapping(value = "/admin",method = RequestMethod.GET)
    public String adminPage(){

        return "admin";
    }
    @RequestMapping(value = "/faculty",method = RequestMethod.GET)
    public String facultyPage(){

        return "faculty";
    }
    @RequestMapping(value = "/seeFacalty",method = RequestMethod.GET)
    public String seeFacultyDetails(HttpServletRequest request, Model model){
        String id = (String) request.getSession().getAttribute("id");
        System.out.println(id+"isi ka hao");
        Faculty facultyDetailsById = facultyService.getFacultyDetailsById(Integer.parseInt(id));
        model.addAttribute("faculty", facultyDetailsById);
        return "seeSingleFaculty";
    }


    @RequestMapping(value = "/student",method = RequestMethod.GET)
    public String studentPage(){

        return "student";
    }

    @RequestMapping(value = "/seeStudent",method = RequestMethod.GET)
    public String seeStudentDetails(HttpServletRequest request, Model model){
        String id = (String) request.getSession().getAttribute("id");
        Student  studentDetailsById = studentService. getStudentDetailsById(Integer.parseInt(id));
        model.addAttribute("student",  studentDetailsById);
        return "seeSingleStudent";
    }







}
