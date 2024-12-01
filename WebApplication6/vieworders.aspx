<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="vieworders.aspx.cs" Inherits="WebApplication6.vieworders" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TechFix</title>
    


    <style>

        body {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
    color: #333;
}

/* Container */
.container {
    width: 90%;
    max-width: 600px;
    margin: 50px auto;
    background-color: white;
    padding: 30px;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

h1 {
    text-align: center;
    margin-bottom: 30px;
    color: #024CAA;
}

/* Input fields */
.input-text {
    width: 100%;
    padding: 10px;
    margin-bottom: 20px;
    border: 1px solid #ccc;
    border-radius: 5px;
    font-size: 16px;
}

/* Submit Button */
.btn-submit {
    width: 100%;
    padding: 12px;
    background-color: #4C338A;
    color: white;
    font-size: 16px;
    font-weight: bold;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

    .btn-submit:hover {
        background-color: #f5b041;
    }

/* GridView Styles */
.grid-table {
    width: 100%;
    border-collapse: collapse;
}

    .grid-table th, .grid-table td {
        padding: 10px;
        border: 1px solid #ccc;
        text-align: left;
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


    

    </style>
</head>
<body>

    
     <header>
        <div class="header">
            <img src="./images/logo.png" alt="Winsoft Logo">
            <span>TechFix</span>
        </div>
       
    </header>

    <form id="form1" runat="server">
        <div class="container">
            <h1>View Orders</h1>
            <asp:GridView ID="gridViewOrders" runat="server" CssClass="grid-table"></asp:GridView>
        </div>
    </form>
</body>
</html>
