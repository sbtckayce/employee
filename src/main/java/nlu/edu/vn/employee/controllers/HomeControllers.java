package nlu.edu.vn.employee.controllers;

import nlu.edu.vn.employee.models.Employee;
import nlu.edu.vn.employee.services.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


import javax.servlet.http.HttpServletRequest;
import java.util.Collection;

@Controller
public class HomeControllers {
    @Autowired
    private EmployeeService employeeService;

    @GetMapping("")
    public String index(HttpServletRequest request) {

        Collection<Employee> employees = employeeService.getEmployees();
        int sizeEmployee = employeeService.sizeEmployee();
        request.setAttribute("sizeEmployee", sizeEmployee);
        request.setAttribute("employees", employees);
        return "index";
    }


}
