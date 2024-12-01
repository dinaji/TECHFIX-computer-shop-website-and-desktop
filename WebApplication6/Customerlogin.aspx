<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Customerlogin.aspx.cs" Inherits="WebApplication6.login" %>

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

 
 <center><div class="container">
       
        <form id="loginForm" runat="server">

          <center>   <h2>Customer Login</h2></center>
            <div class="form-group">
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
       
        <p>Don't have an account? <a href="Customerregister.aspx">Register here</a></p>

            <p>Forget Password<a href="forgetpassword.aspx">Click here</a></p>

    </div>
     </form>
 
        </center> 

</body>
</html>
