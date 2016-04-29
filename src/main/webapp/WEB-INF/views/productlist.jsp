<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>
    <div class="container-wrapper">
        <div class="container">
     <div class="Header">
         <h1>Bikes </h1>
         <p class="lead"> Check our quality range og bikes we have in Store!</p>
         </div>

            <table class="table table-striped table-hover">

                <thead>
                <tr class="bg-success">

                    <th>
                        Photo
                    </th>


                    <th>
                        Name
                    </th>

                    <th>
                        Type
                    </th>
                    <th>
                        Price
                    </th>
                    <th>
                        Stock
                    </th>
                    <th>

                    </th>
                </tr>

                </thead>
                <c:forEach items="${productList}" var="product">


                <>
                    <td> <img src="-" alt="bike image"/> </td>
                    <td>${product.name}   </td>
                    <td>${product.type}   </td>
                    <td>${product.price} GBP  </td>
                    <td>${product.stock}   </td>
                    <td><a href="<spring:url value="/productlist/Productdetails/${product.id}"   />"
                            ><span class="glyphicon glyphicon-tags"></span></a></td>
                </tr>

                </c:forEach>
            </table>
<%@include file="template/footer.jsp"%>