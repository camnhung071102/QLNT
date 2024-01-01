package Controller;

import Model.Login;
import dao.MedicineDAO;
import dao.UserDAO;
import Model.Medicine;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class LoginController {
    private final UserDAO userDAO = new UserDAO();

    @RequestMapping("/")
    public String viewLoginForm(Model model) {
        model.addAttribute("login", new Login());
        return "login";
    }

    @RequestMapping(value = "/", method = RequestMethod.POST)
    public String submitForm(@ModelAttribute("login") Login login, Model model) {
        if (login.getUserName() != null && login.getPassword() != null) {
        	 System.out.println("User Name: " + login.getUserName()); 
        	 System.out.println("Pass word: " + login.getPassword()); 
            Login user = userDAO.getUserByUsernameAndPassword(login.getUserName(), login.getPassword());
            if (user != null) {
                model.addAttribute("msg", user.getUserName());
                System.out.println("User logged in: " + user.getUserName());
                return "success";
            } else {
                model.addAttribute("error", "Invalid Details");
              
                return "login";
            }
        } else {
            model.addAttribute("error", "Please enter details");
         
            return "login";
        }
    }
 
 


  
}