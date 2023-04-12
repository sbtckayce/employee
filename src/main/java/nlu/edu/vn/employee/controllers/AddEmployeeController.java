package nlu.edu.vn.employee.controllers;

import nlu.edu.vn.employee.models.Employee;
import nlu.edu.vn.employee.services.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;



@Controller
public class AddEmployeeController {
    @Autowired
    private EmployeeService employeeService;
    @GetMapping("/themnhanvien")
    public String index(){
        return "themnhanvien";
    }
    @PostMapping("/themnhanvien")
    @ResponseBody
    public ResponseEntity<String> saveEmployee(@RequestBody Employee employee) {
        boolean checkId = employeeService.checkIdEmployee(employee.getId());
        if(checkId){
            employeeService.addEmployee(employee);
            return ResponseEntity.ok("success");
        }
        else{
            return ResponseEntity.ok("failed");
        }
    }
}
