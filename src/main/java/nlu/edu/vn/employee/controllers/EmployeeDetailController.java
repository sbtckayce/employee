package nlu.edu.vn.employee.controllers;

import nlu.edu.vn.employee.models.Employee;
import nlu.edu.vn.employee.services.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.util.Collection;

@Controller
public class EmployeeDetailController {
    @Autowired
    private EmployeeService employeeService;
    @GetMapping("/chitietnhanvien")
    public String index(@RequestParam("id") String id, Model model){
        Employee employee = employeeService.getEmployeeById(id);
        model.addAttribute("employee", employee);
        return "chitietnhanvien";
    }
}
