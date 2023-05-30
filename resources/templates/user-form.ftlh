<!DOCTYPE HTML>
<html>
<head>
    <meta charset="UTF-8" />
    <title><#if add>Create User<#else>Edit User</#if></title>
    <link rel="stylesheet" type="text/css" href="/css/style.css"/>
</head>
<body>
<h1><#if add>Create new User:<#else>Edit existing user:</#if></h1>
<a href="/users">Back to User List</a>
<br/><br/>
<#if add>
    <#assign urlAction>/register</#assign>
    <#assign submitTitle>Create</#assign>
<#else>
    <#assign urlAction>${'/users/' + user.id + '/edit'}</#assign>
    <#assign submitTitle>Update</#assign>
</#if>
<form action="${urlAction}" name="user" method="POST">
    <table border="0">
        <#if user.id??>
            <tr>
                <td>ID</td>
                <td>:</td>
                <td>${user.id}</td>
            </tr>
        </#if>
        <tr>
            <td>Login</td>
            <td>:</td>
            <td><input type="text" name="login" value="${(user.login)!''}" /></td>
        </tr>
        <tr>
            <td>Password</td>
            <td>:</td>
            <td><input type="password" name="password" value="${(user.password)!''}" /></td>
        </tr>
        <tr>
            <td>FirstName</td>
            <td>:</td>
            <td><input type="text" name="firstName" value="${(user.firstName)!''}" /></td>
        </tr>
        <tr>
            <td>SecondName</td>
            <td>:</td>
            <td><input type="text" name="secondName" value="${(user.secondName)!''}" /></td>
        </tr>
        <tr>
            <td>LastName</td>
            <td>:</td>
            <td><input type="text" name="lastName" value="${(user.lastName)!''}" /></td>
        </tr>
        <tr>
            <td>Phone</td>
            <td>:</td>
            <td><input type="text" name="phone" value="${(user.phone)!''}" /></td>
        </tr>
        <tr>
            <td>Email</td>
            <td>:</td>
            <td><input type="email" name="email" value="${(user.email)!''}" /></td>
        </tr>

    </table>
    <input type="submit" value="${submitTitle}" />
</form>
<br/>
<#if errorMessage?has_content>
    <div class="error">${errorMessage}</div>
</#if>
</body>
</html>