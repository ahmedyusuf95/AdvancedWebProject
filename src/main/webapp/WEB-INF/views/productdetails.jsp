<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>
<div class="container-wrapper">
  <div class="container">
    <div class="Header">
      <h1>Listing details page </h1>
      <p class="lead"> Here is all you need to know about the product</p>
    </div>


    <div class="container" >
      <div class="row">
          <div class="col-lg-5">
              <img src="/" alt="image" style="width: 100%; height: 300px"/>

          </div>

          <div class="col-lg-5">
          <h3> ${product.name}</h3>

              <p>  <strong>Bike type</strong> : ${product.type} </p>
              <p>  <strong>Price</strong> :  ${product.price}</p>
              <p> <strong>Amount in stock</strong>  : ${product.stock}</p>



          </div>

        </div>


<%@include file="template/footer.jsp"%>