package college.controller;

import college.model.Faculty;
import college.model.Student;
import college.service.FacultyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.validation.Valid;
import java.util.List;

@Controller
public class FacultyController {

    @Autowired
    FacultyService facultyService;

    @RequestMapping("/registerFaculty")
    public String facultyForm(Model model){
        model.addAttribute("faculty", new Faculty());

        return "facultyForm2";
    }

    @RequestMapping(value = "/saveFaculty", method = RequestMethod.POST)
    @ResponseBody
    public String saveFaculty(@Valid @ModelAttribute("faculty") Faculty faculty, Model model, BindingResult bindingResult) {

        if (!bindingResult.hasErrors()) {
            BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();

            String hashedPassword = passwordEncoder.encode(faculty.getPassword());
            faculty.setPassword(hashedPassword);
            String s = facultyService.insertFaculty(faculty);


            model.addAttribute("message", s);
            return "msg";
        }
        else
        {
            return "adminForm";
        }
    }

    @RequestMapping("/getAllFaculty")
    public String displayAll(Model model) {
        List<Faculty> list = facultyService.getAllFacultyDetails();
        model.addAttribute("facultyData", list);
        System.out.println(list);
        return "displayFaculty";
    }
}
