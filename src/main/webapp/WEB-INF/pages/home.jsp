<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Details</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #1a1a1a;
            color: #343a40;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .user-details {
            background-color: #ffffff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            padding: 20px;
            text-align: center;
        }

        h1 {
            color: #007bff;
        }

        ul {
            list-style-type: none;
            padding: 0;
        }

        li {
            margin: 5px 0;
        }

        p {
            margin: 5px 0;
        }
    </style>
</head>
<body>
    <div class="user-details">
        <h1>User Details</h1>
        <p>Name: ${name}</p>
        <p>Age: ${age}</p>
        <p>Gender: ${gender}</p>
        <p>Marital Status: ${mstatus}</p>
        <c:if test="${not empty dataList}">
            <ul>
                <c:forEach var="listValue" items="${dataList}">
                    <li>${listValue}</li>
                </c:forEach>
            </ul>
        </c:if>
    </div>
</body>
</html>
