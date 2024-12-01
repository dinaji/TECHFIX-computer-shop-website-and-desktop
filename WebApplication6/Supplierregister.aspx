<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Supplierregister.aspx.cs" Inherits="WebApplication6.Supplierregister" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TechFix</title>
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
        
        <form id="registerForm" runat="server">
           <center> <h2>Supplier Register</h2></center>
           <center><div class="form-group">
                <label for="username">Username:</label>
                <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" required="required"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="email">Email:</label>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" required="required"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <asp:TextBox ID="txtPassword" TextMode="Password" runat="server" CssClass="form-control" required="required"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" />
            </div>
       
        <p>Already have an account? <a href="Supplierlogin.aspx">Login here</a></p>
    </div></center> 
     </form>
</body>
</html>
