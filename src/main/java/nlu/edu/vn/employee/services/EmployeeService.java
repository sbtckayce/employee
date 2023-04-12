package nlu.edu.vn.employee.services;

import nlu.edu.vn.employee.models.Employee;
import org.springframework.stereotype.Service;


import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

@Service
public class EmployeeService {
    private static final EmployeeService instance = new EmployeeService();
    private Map<String, Employee> employeeMap;

    public EmployeeService() {
        init();
    }

    private void init() {
        employeeMap = new HashMap<>();
        Employee e1 = new Employee("1", "kien", true, "2001-08-30", "thu duc", "123456789", "code", "thuc tap", 1);
        Employee e2 = new Employee("2", "long", false, "2001-04-17", "thu duc", "123456789", "code", "thuc tap", 1);
        Employee e3 = new Employee("3", "khanh", true, "2001-03-06", "thu duc", "123456789", "code", "thuc tap", 1);

        employeeMap.put(e1.getId(), e1);
        employeeMap.put(e2.getId(), e2);
        employeeMap.put(e3.getId(), e3);


    }

    public int sizeEmployee() {
        return employeeMap.size();
    }

    public void addEmployee(Employee employee) {
        employeeMap.put(employee.getId(), employee);
    }

    public static EmployeeService getInstance() {
        return instance;
    }

    public Collection<Employee> getEmployees() {
        return employeeMap.values();
    }

    public Employee getEmployeeById(String id) {
        return employeeMap.get(id);
    }

    public boolean checkIdEmployee(String id) {
        if (employeeMap.containsKey(id)) {
            return false;
        } else {
            return true;
        }
    }
    public void updateEmployee(Employee employee) {


        if (employeeMap.containsKey(employee.getId())) {

            employeeMap.put(employee.getId(), employee);
        } else {
            throw new IllegalArgumentException("Employee " + employee.getId() + " not found");
        }
    }


}
