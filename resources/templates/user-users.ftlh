<!DOCTYPE HTML>
<html>
<head>
    <meta charset="UTF-8" />
    <title>Users list</title>
    <link rel="stylesheet" type="text/css" href="/css/style.css"/>
</head>
<body>
<h1>User List</h1>

<div>
    <nobr>
        <a href="/register">Add new User</a> |
        <a href="/user/users">Back to main page</a>
    </nobr>
</div>
<br/><br/>
<div>
    <table border="1">
        <tr>
            <th>Id</th>
            <th>Login</th>
            <th>FirstName</th>
            <th>SecondName</th>
            <th>LastName</th>
            <th>Email</th>
        </tr>
        <#list users as user>
            <tr>
                <td><a href="${'users/' + user.id}">${user.id}</a></td>
                <td>${user.login}</td>
                <td>${user.firstName}</td>
                <td>${user.secondName}</td>
                <td>${user.lastName}</td>
                <td>${user.email}</td>
            </tr>
        </#list>
    </table>
</div>
</body>
</html>