<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="spring" uri="http://java.sun.com/jsp/jstl/core" %>

<%@include file="/WEB-INF/views/template/header.jsp" %>

<%@page contentType="text/html;charset=UTF-8" language="java" %>


<div class="container-wrapper">

    <div class="container">
        <div class="page-header">
            <h1>Product Inventory</h1>
            <p class="lead"> Welcome to the product inventory page.</p>
        </div>

        <table class="table table-striped table-hover">
            <thead>
            <tr class="bg-success">
                <th>Photo Thumbnail</th>
                <th>Name</th>
                <th>Category</th>
                <th>Condition</th>
                <th>Units In Stock</th>
                <th>Price</th>
                <th></th>
            </tr>
            </thead>

            <c:forEach items="${products}" var="product">
                <tr>
                    <td><img src="<c:url value="/resources/images/${product.id}.png" />" alt="image"
                    style="width:100%"/></td>
                    <td>${product.name}</td>
                    <td>${product.category}</td>
                    <td>${product.condition}</td>
                    <td>${product.unitsInStock}</td>
                    <td><span>${product.price}</span></td>
                    <td>
                        <a href="<spring:url value="/admin/productInventory/editProduct/${product.id}"/>">
                            <span class="glyphicon glyphicon-edit"></span></a>

                        <a href="<spring:url value="/products/viewProduct/${product.id}"/>">
                            <span class="glyphicon glyphicon-info-sign"></span></a>

                        <a href="<spring:url value="/admin/productInventory/deleteProduct/${product.id}"/>">
                            <span class="glyphicon glyphicon-remove"></span></a>
                    </td>
                </tr>
            </c:forEach>
        </table>

        <a href="<spring:url value="/admin/productInventory/addProduct" />" class="btn btn-lg btn-primary"> Add Product </a>

        <%@include file="/WEB-INF/views/template/footer.jsp" %>
