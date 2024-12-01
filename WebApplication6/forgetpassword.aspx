<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forgetpassword.aspx.cs" Inherits="WebApplication6.forgetpassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style>


form {

    background: #fff;
    padding: 250px 50px;
    border-radius: 10px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    text-align: center;
}

h2 {
    color: #024CAA;
    margin-bottom: 20px;
}

label {
    color: #555;
    margin-bottom: 10px;
    display: block;
    text-align: left;
}

input[type="text"], input[type="password"] {
    width: 30%;
    padding: 10px;
    margin: 10px 0 20px 0;
    border: 1px solid #ccc;
    border-radius: 5px;
}

button {
    width: 100%;
    padding: 10px;
    background-color: #007BFF;
    border: none;
    border-radius: 5px;
    color: #fff;
    font-size: 16px;
    cursor: pointer;
    transition: background-color 0.3s;
}

button:hover {
    background-color: #0056b3;
}

.message {
   padding-top:20px;
    padding: 10px;
    border-radius: 5px;
    font-size: 14px;
}

.message.success {
    background-color: #d4edda;
    color: #155724;
    border: 1px solid #c3e6cb;
     
}

.message.error {
    background-color: #f8d7da;
    color: #721c24;
    border: 1px solid #f5c6cb;
    
}


/* Container for the logo and text */
.header {
  
    background-color: #0055b3; /* Blue background */
    display: flex;
    align-items: center;
    padding: 20px; /* Adjust as needed */
}

/* Style for the logo */
.header img {
    width: 50px; /* Adjust logo size */
    height: 50px;
    margin-right: 15px; /* Space between logo and text */
}

/* Style for the text */
.header h1 {
 
    font-size: 24px; /* Adjust font size */
    margin: 0;
}

.tech{
    color:#fff;
}

    </style>

</head>
<body>


     <header>
        <div class="header">
            <img src="./images/logo.png" alt="Winsoft Logo">
            <span id="tech">TechFix</span>
        </div>

               
    </header>
    <form id="form1" runat="server">
        <div>
            <h2>Forget Password</h2>
            <asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label>
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
        </div>
    </form>
</body>
</html>
