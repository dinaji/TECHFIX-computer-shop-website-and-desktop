<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_add_product.aspx.cs" Inherits="WebApplication6.Admin_add_product" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Add Category and Product</title>
    <style>
        /* General Styles */
body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
    color: #333;
}

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
    color: #024CAA
}

label {
    font-weight: bold;
    margin-bottom: 5px;
    display: block;
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

/* File Upload */
input[type="file"] {
    width: 100%;
    padding: 10px;
    margin-bottom: 20px;
}

/* Submit Button */
.btn-submit {
    width: 100%;
    padding: 12px;
    background-color: #024CAA;
    color: white;
    font-size: 16px;
    font-weight: bold;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

.btn-submit:hover {
    background-color: #024CAA;
}

hr {
    margin: 50px 0;
    color:#024CAA;
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


   <form id="form1" runat="server" enctype="multipart/form-data">
        <div class="container">
            <div class="section">
    <h1>Add Product</h1>

    <label for="txtProductName">Product Name:</label>
    <asp:TextBox ID="txtProductName" runat="server" CssClass="input-text"></asp:TextBox><br /><br />

    <label for="ddlCategory">Category:</label>
    <asp:DropDownList ID="ddlCategory" runat="server" CssClass="input-text"></asp:DropDownList><br /><br />

    <label for="txtPrice">Price:</label>
    <asp:TextBox ID="txtPrice" runat="server" CssClass="input-text"></asp:TextBox><br /><br />

    <label for="fuProductImage">Upload Product Image:</label>
    <asp:FileUpload ID="fuProductImage" runat="server" CssClass="input-text" /><br /><br />

    <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>


    <asp:Button ID="btnAddProduct" runat="server" Text="Add Product" OnClick="btnAddProduct_Click" CssClass="btn-submit" />
</div>
</div>

    </form>
</body>
</html>
