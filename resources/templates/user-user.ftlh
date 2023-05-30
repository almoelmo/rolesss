<!DOCTYPE HTML>
<html>
<head>
    <meta charset="UTF-8" />
    <title>View User</title>
    <link rel="stylesheet" type="text/css" href="/css/style.css"/>
</head>
<body>
<h1>View User</h1>
<a href="/user/users">Back to User List</a>
<br/><br/>
<#if user??>
    <table border="0">
        <tr>
            <td>ID</td>
            <td>:</td>
            <td>${user.id}</td>
        </tr>
        <tr>
            <td>Login</td>
            <td>:</td>
            <td>${user.login}</td>
        </tr>
        <tr>
            <td>FirstName</td>
            <td>:</td>
            <td>${user.firstName}</td>
        </tr>
        <tr>
            <td>SecondName</td>
            <td>:</td>
            <td>${user.secondName}</td>
        </tr>
        <tr>
            <td>LastName</td>
            <td>:</td>
            <td>${user.lastName}</td>
        </tr>
        <tr>
            <td>Email</td>
            <td>:</td>
            <td>${user.email}</td>
        </tr>
    </table>
</#if>
<#if errorMessage?has_content>
    <div class="error">${errorMessage}</div>
</#if>
</body>
</html>