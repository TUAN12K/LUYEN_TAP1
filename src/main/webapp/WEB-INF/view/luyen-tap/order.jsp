<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>LUYEN_TAP</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
</head>
<body>
<header>
    <div class="controller">
        <h3 style="text-align: center">LUYỆN TẬP ORDER</h3>
    </div>
</header>
<section>
    <div class="controller">
        <table class="table">
            <thead>
            <tr>
                <th scope="col">STT</th>
                <th scope="col">ID</th>
                <th scope="col">CREATED_DATE</th>
                <th scope="col">CUSTOMER_NUMBER</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${pageOders.content}" var="order" varStatus="i">
                <tr>
                    <td>${i.index + 1}</td>
                    <td>${order.orderId}</td>
                    <td>${order.createdDate}</td>
                    <td>${order.customerNumber}</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
        <c:if test="${pageOders.getNumber() + 1 > 1}">
            <a href="?page=${pageOders.getNumber() + 1 - 1}">
                PREVIOUS
            </a>
        </c:if>
        <span>${pageOders.getNumber() + 1} / ${pageOders.getTotalPages()}</span>
        <c:if test="${pageOders.getNumber() + 1 < pageOders.getTotalPages()}">
            <a href="?page=${pageOders.getNumber() + 1 + 1}">
                NEXT
            </a>
        </c:if>
    </div>
</section>
<footer>

</footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
        integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"
        integrity="sha384-fbbOQedDUMZZ5KreZpsbe1LCZPVmfTnH7ois6mU1QK+m14rQ1l2bGBq41eYeM/fS"
        crossorigin="anonymous"></script>
</body>
</html>