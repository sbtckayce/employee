package nlu.edu.vn.employee.controllers;

import nlu.edu.vn.employee.models.Employee;
import nlu.edu.vn.employee.services.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;


@Controller
public class EditEmployeeController {

    @Autowired
    private EmployeeService employeeService;

    @GetMapping("/suanhanvien")
    public String index(@RequestParam("id") String id, Model model){
        Employee employee = employeeService.getEmployeeById(id);
        model.addAttribute("employee", employee);
        return "suanhanvien";
    }
    @PostMapping("/suanhanvien")
    @ResponseBody
    public ResponseEntity<String> updateEmployee(@RequestBody Employee employee) {
        employeeService.updateEmployee(employee);
        return ResponseEntity.ok("success");
    }
}
