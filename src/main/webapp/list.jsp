<%@ page import="com.codegym.Customer" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: user
  Date: 3/3/2022
  Time: 9:51 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
  <head>
    <title>Danh sach khach hang</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

  </head>
  <body>
  <div class="container">
  <nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
      <a class="navbar-brand" href="#">Danh sách khách hàng</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="#">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Link</a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              Dropdown
            </a>
            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
              <li><a class="dropdown-item" href="#">Action</a></li>
              <li><a class="dropdown-item" href="#">Another action</a></li>
              <li><hr class="dropdown-divider"></li>
              <li><a class="dropdown-item" href="#">Something else here</a></li>
            </ul>
          </li>
          <li class="nav-item">
            <a class="nav-link disabled">Disabled</a>
          </li>
        </ul>
        <form class="d-flex">
          <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
          <button class="btn btn-outline-success" type="submit">Search</button>
        </form>
      </div>
    </div>
  </nav>


  <%
    List<Customer> customers =new ArrayList<>();
    Customer cus1=new Customer("Kieu Dinh Huan",29,"https://chupanhvn.s3.ap-southeast-1.amazonaws.com/wp-content/uploads/2020/10/25114511/chan-dung-nam2.jpg","Ha Noi","17-07-1992");
    Customer cus2=new Customer("Nguyen Van Toan ",25,"data:image/jpeg;base64,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","Ho Chi Minh","17-02-1991");
    customers.add(cus1);
    customers.add(cus2);
    request.setAttribute("customers", customers);
  %>

  <table class="table">
    <thead>
    <tr>
      <th scope="col">Tên</th>
      <th scope="col">Tuổi</th>
      <th scope="col">Ảnh</th>
      <th scope="col">Địa chỉ</th>
      <th scope="col">Ngày Sinh</th>
    </tr>
    </thead>
    <c:forEach var="cus" items="${customers}">
    <tbody>
      <tr>
        <td>${cus.name}</td>
        <td>${cus.age}</td>
        <td><img src=${cus.pictureLink}></td>
        <td>${cus.address}</td>
        <td>${cus.birthday}</td>
      </tr>
    </tbody>
    </c:forEach>
  </table>


  </div>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
  </body>
</html>
