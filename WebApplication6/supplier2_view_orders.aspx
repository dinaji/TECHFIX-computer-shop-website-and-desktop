<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="supplier2_view_orders.aspx.cs" Inherits="WebApplication6.supplier2_view_inventory" %>

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


 
.header { 
    display: flex; 
    justify-content: space-between;
     align-items: center; 
     background-color: #024CAA; 
     /* This specific blue color */ padding: 10px;

} .header .logo { 
      display: flex; 
      align-items: center;

  } 
  .header .logo img {
       height: 40px;
        /* Adjust as needed */ margin-right: 10px;

  } 
  
  .header .home-link {
         color: white; 
         text-decoration: none; 
         font-size: 18px;
           margin-right: 90px;
          /* Adjust as needed */ }
   
  

    </style>
</head>
<body>

    <header class="header">
         
          <div class="logo">
          <img src="./images/logo.png" alt="Logo">
          <span>TechFix</span> </div> 
         <a href="Add_orders_supplier02.aspx" class="home-link">Add Orders Supplier 02</a> 

     </header>

    <form id="form1" runat="server">
        <div class="container">
            <h1>View Orders - Supplier 2</h1>
          <center>  <asp:GridView ID="GridViewInventory" runat="server" AutoGenerateColumns="true"></asp:GridView></center>
        </div>
    </form>
</body>
</html>
