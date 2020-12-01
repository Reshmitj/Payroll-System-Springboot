package com.example.demo;

import static antlr.Utils.error;
import javax.servlet.http.HttpServletRequest;
import com.example.demo.model.Admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.model.Admin;
import com.example.demo.model.PaySlip;
import com.example.demo.model.User;
import com.example.demo.services.AdminService;
import com.example.demo.services.PaySlipServices;
import com.example.demo.services.UserService;
import javax.servlet.ServletException;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


@Controller
public class ApplicationController {

    @Autowired
    private UserService userService;

    @Autowired
    private AdminService adminService;

    @Autowired
    private PaySlipServices payService;

    @ResponseBody
    @RequestMapping("/home")
    public String hello() {
        return "welcomeemployee";
    }

    @RequestMapping("/welcome")
    public String welcome(HttpServletRequest req) {
        req.setAttribute("mode", "MODE_HOME");
        return "welcomeemployee";
    }

    @RequestMapping("/register")
    public String registration(HttpServletRequest req) {
        return "register";
    }

    @RequestMapping("/save-user")
    public String saveUser(@ModelAttribute User user, BindingResult bindingresult, HttpServletRequest request) {
        userService.saveMyUser(user);
        request.setAttribute("users", userService.showAllUsers());
        request.setAttribute("mode", "MODE_HOME");
        return "welcomeemployee";
    }

    @RequestMapping("/delete-user")
    public String deleteUser(@RequestParam int id, HttpServletRequest req) {
        userService.deleteMyUser(id);
        req.setAttribute("users", userService.showAllUsers());
        return "allusers";
    }

    @RequestMapping("/edit-user")
    public String editUser(@RequestParam String username, HttpServletRequest req) {
        req.setAttribute("user", userService.editUser(username));
        return "updateuser";
    }

    @RequestMapping("/login")
    public String login(HttpServletRequest req) {
        req.setAttribute("mode", "MODE_LOGIN");
        return "welcomeemployee";
    }

    @RequestMapping("/login-user")
    public String loginUser(@ModelAttribute User user, HttpServletRequest req) {
        if (userService.findByUsernameAndPassword(user.getUsername(), user.getPassword()) != null) {
            return "homepage";
        } else {
            req.setAttribute("error", "Invalid Username or Password");
            req.setAttribute("mode", "MODE_LOGIN");
            return "welcomeemployee";
        }
    }


    @RequestMapping("/admin")
    public String loginadmin(@ModelAttribute Admin admin, HttpServletRequest req) {
        if (adminService.findByEmailAndPassword(admin.getEmail(), admin.getPassword()) != null) {
            return "welcomeemployee";
        } else {
            return "login";
        }
    }

    @RequestMapping("/all-users")
    public String allusers(HttpServletRequest req) {
        req.setAttribute("users", userService.showAllUsers());
        return "allusers";
    }

    @RequestMapping("/manage")
    public String manage(HttpServletRequest req) {
        req.setAttribute("users", userService.showAllUsers());
        return "manage";
    }

    @RequestMapping("/save-payslip")
    public String savepayslip(@ModelAttribute PaySlip payslip, BindingResult bindingresult, HttpServletRequest req, @RequestParam String email, @RequestParam String year, @RequestParam String month, @RequestParam String deduction) {

        req.setAttribute("user", userService.findByEmail(email));
        req.setAttribute("month", month);
        req.setAttribute("year", year);
        req.setAttribute("deduction", deduction);
        payService.savePayslip(payslip);
        return "generate";
    }

    @RequestMapping("/logout")
    public String logout(HttpServletRequest req) throws ServletException {
        req.logout();
        return "logout";
    }
    
     @RequestMapping("/readmore")
    public String readmore(HttpServletRequest req) throws ServletException {
        
        return "readmore";
    }
    
     @RequestMapping("/add-admin")
    public String addAdmin(HttpServletRequest req) {
        return "addadmin";
    }
    
    @RequestMapping("/all-admins")
    public String alladmins(HttpServletRequest req, final RedirectAttributes redirectAttributes) {
        req.setAttribute("admins", adminService.showAllAdmin());
        redirectAttributes.addFlashAttribute("css", "Added successfully!");
        return "alladmins";
    }
    
    @RequestMapping("/save-admin")
    public String saveAdmin(@ModelAttribute Admin admin, BindingResult bindingresult, HttpServletRequest request) {
        adminService.saveAdmin(admin);
        request.setAttribute("admin", adminService.showAllAdmin());
        request.setAttribute("mode", "MODE_HOME");
        return "welcomeemployee";
    }

    @RequestMapping("/delete-admin")
    public String deleteAdmin(@RequestParam int id, HttpServletRequest req) {
        adminService.deleteAdmin(id);
        req.setAttribute("admins", adminService.showAllAdmin());
        return "alladmins";
    }
}
