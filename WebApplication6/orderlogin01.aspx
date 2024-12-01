<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="orderlogin01.aspx.cs" Inherits="WebApplication6.orderlogin01" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="css.css">

    <style>
        .container {
            width: 90%;
            margin: 0 auto;
            max-width: 1000px;
        }


        .form-group{
             width: 290px;
        }
    </style>
 
</head>
<body>
    <header>
        <div class="logo">
            <img src="./images/logo.png" alt="Winsoft Logo">
            <span>TechFix</span>

        </div>   
       
    </header>

 
    <div class="container">
        
        <form id="loginForm" runat="server">
           
        <center>  <div class="form-group">
                <label for="username">Username:</label>
                <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" required="required"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <asp:TextBox ID="txtPassword" TextMode="Password" runat="server" CssClass="form-control" required="required"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
            </div>
       
        
    </div></center>  
     </form>
</body>
</html>
