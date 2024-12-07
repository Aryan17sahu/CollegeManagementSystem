package college.controller;

import college.model.Admin;
import college.service.AdminService;
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

@Controller
public class AdminController {

    @Autowired
    AdminService adminService;

    @RequestMapping("/registerAdmin")
    public String adminForm(Model model){
        model.addAttribute("admin", new Admin());


        return "adminForm";
    }

    @RequestMapping(value = "/saveAdmin", method = RequestMethod.POST)
    @ResponseBody
    public String save(@Valid @ModelAttribute("admin") Admin  admin, Model model, BindingResult bindingResult) {

        if (!bindingResult.hasErrors()) {
            BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();

            String hashedPassword = passwordEncoder.encode(admin.getPassword());
            admin.setPassword(hashedPassword);
            String s = adminService.insertAdmin(admin);


            model.addAttribute("message", s);
            return "msg";
        }
        else
        {
            return "adminForm";
        }



    }
}
