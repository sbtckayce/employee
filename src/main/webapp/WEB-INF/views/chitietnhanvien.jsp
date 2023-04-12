<%@ page import="nlu.edu.vn.employee.models.Employee" %>
<%@ page import="nlu.edu.vn.employee.services.EmployeeService" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
    String employeeId = request.getParameter("id");
    Employee employee = EmployeeService.getInstance().getEmployeeById(employeeId);
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quản lí nhân viên</title>

    <!-- Thêm CSS của Bootstrap vào trang -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
          crossorigin="anonymous">
</head>
<body>

<div class="container">
    <div >
        <h1 style="margin-top: 100px;margin-bottom: 100px" class="row justify-content-center">Chi tiết nhân viên</h1>
        <div class="d-flex justify-content-center">
            <div>
                <p class="mb-10 "><span style="font-weight: bold">Mã nhân viên</span> :${employee.id}</p>
                <p class="mb-10"><span style="font-weight: bold">Họ tên</span> :${employee.name}</p>
                <c:if test="${employee ne null}">
                    <p class="mb-10"><span style="font-weight: bold">Giới tính</span> :${employee.isMale() ? "Nam":"Nữ"}</p>
                </c:if>
                <p class="mb-10"><span style="font-weight: bold">Ngày sinh</span> :${employee.birthday}</p>
                <p class="mb-10"><span style="font-weight: bold">Địa chỉ</span> :${employee.address}</p>
                <p class="mb-10"><span style="font-weight: bold">Số điện thoại</span> :${employee.phone}</p>
                <p class="mb-10"><span style="font-weight: bold">Phòng ban</span> :${employee.department}</p>
                <p class="mb-10"><span style="font-weight: bold">Chức vụ</span> :${employee.title}</p>
                <p class="mb-10"><span style="font-weight: bold">Lương cơ bản</span> :${employee.wageRate}</p>
                <a href="/" type="button" class="btn btn-primary">Danh sách nhân viên</a>
                <a href="/suanhanvien?id=${employee.id}" type="button" class="btn btn-warning">Sửa</a>
            </div>

        </div>


    </div>
</div>


<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>

</body>
</html>
