<!DOCTYPE HTML>
<html>
<head>
    <meta charset="UTF-8" />
    <title>View User</title>
    <link rel="stylesheet" type="text/css" href="/css/style.css"/>
</head>
<body>
<h1>View User</h1>
<a href="/users">Back to User List</a>
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
        <tr>
            <td>Phone</td>
            <td>:</td>
            <td>${user.phone}</td>
        </tr>
        <tr>
            <td>Password</td>
            <td>:</td>
            <td>${user.password}</td>
        </tr>
    </table>
    <br/><br/>
    <#if allowDelete>
        <form action="${'/users/' + user.id + '/delete'}" method="POST">
            Delete this user? <input type="submit" value="Yes" />
        </form>
    <#else>
        <div>
            <a href="${'/users/' + user.id + '/edit'}">Edit</a> |
            <a href="${'/users/' + user.id + '/delete'}">Delete</a>
        </div>
    </#if>
</#if>
<#if errorMessage?has_content>
    <div class="error">${errorMessage}</div>
</#if>
</body>
</html>