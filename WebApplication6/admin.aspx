<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="WebApplication6.admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TechFix</title>
    <link rel="stylesheet" href="css.css">
</head>
<body>
    
    <header>
        <div class="logo">
            <img src="./images/logo.png" alt="Winsoft Logo">
            <span>TechFix</span>
        </div>

                     <li class="header-icons">
                        <a class="nav-link" href="#">Home</a>
                    </li>

                    <li class="header-icons">
                        <a class="nav-link" href="#">Repairs & Services</a>
                    </li>

                    <li class="header-icons">
                        <a class="nav-link" href="contact.aspx">Contact</a>
                    </li>


        <div class="search-bar">
            <input type="text" placeholder="Search for products">
            <button>Search</button>
        </div>

        <div class="header-icons">
            <a href="login.aspx">Login </a>
            <a href="#"><span>♥</span></a>
            <a href="#"><span>🛒</span><span>0.00</span></a>
        </div>
    </header>

                <form class="dashboard .box-container">
          <label for="fname">Add products:</label><br>
          
          
          <input type="submit" value="Add">
        </form> 


    
                <form >
          <label for="fname">View Orders:</label><br>
          
          
          <input type="submit" value="View">
        </form> 

   
</body>
</html>
