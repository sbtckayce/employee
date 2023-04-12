<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quản lí nhân viên</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
          crossorigin="anonymous">
</head>
<body>

<div class="container">
    <div class="row justify-content-center">
        <h1 style="margin-top: 100px;margin-bottom: 100px" class="row justify-content-center">Quản lí nhân viên</h1>


        <div class="col-md-10">
            <blockquote class="blockquote">
                <p class="mb-0">Tổng số nhân viên : ${sizeEmployee}</p>
                <a href="/themnhanvien" type="button" class="btn btn-primary">Thêm Nhân Viên</a>
            </blockquote>
            <table class="table table-sm table-hover">
                <thead class="">
                <tr>
                    <th scope="col">Sửa</th>
                    <th scope="col">Mã Nhân Viên</th>
                    <th scope="col">Họ Tên</th>
                    <th scope="col">Giới tính</th>
                    <th scope="col">Ngày sinh</th>
                    <th scope="col">Địa chỉ</th>
                    <th scope="col">Số điện thoại</th>
                    <th scope="col">Phòng ban</th>
                    <th scope="col">Chức vụ</th>
                    <th scope="col">Mức lương</th>
                </tr>
                </thead>
                <tbody class="table-group-divider">
                <c:forEach items="${employees}" var="employee">

                    <tr>

                        <th scope="row">
                            <a href="/suanhanvien?id=${employee.id}" type="button"
                               class="btn btn-primary">Sửa</a>
                        </th>
                        <td><a href="/chitietnhanvien?id=${employee.id}">${employee.id}</a></td>
                        <td>${employee.name}</td>
                        <c:if test="${employee.male==true}">
                            <td>Nam</td>
                        </c:if>
                        <c:if test="${employee.male!=true}">
                            <td>Nữ</td>
                        </c:if>
                        <td>${employee.birthday}</td>
                        <td>${employee.address}</td>
                        <td>${employee.phone}</td>
                        <td>${employee.department}</td>
                        <td>${employee.title}</td>
                        <td>${employee.wageRate}</td>

                    </tr>

                </c:forEach>


                </tbody>
            </table>

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
