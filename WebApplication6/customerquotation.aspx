<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="customerquotation.aspx.cs" Inherits="WebApplication6.customerquotation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">



   <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TechFix</title>
    

    <style>
        /*Add Quotation*/
/* General Styles */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
    color: #333;}

/* Container */
.container {
    width: 90%;
    max-width: 600px;
    margin: 80px auto;
    background-color: white;
    padding: 30px;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);}

h1 {
    text-align: center;
    margin-bottom: 30px;
    color: #444;}

/* Input fields */
.input-text {
    width: 100%;
    padding: 10px;
    margin-bottom: 20px;
    border: 1px solid #ccc;
    border-radius: 5px;
    font-size: 16px;}

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
    transition: background-color 0.3s ease;}

.btn-submit:hover {
        background-color: #024CAA;}


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
            <h1>Add Quotation</h1>
            
            <!-- Supplier ID -->
            <label for="txtSupplierID">Supplier ID:</label>
            <asp:TextBox ID="txtSupplierID" runat="server" CssClass="input-text"></asp:TextBox><br /><br />

            <!-- Quotation Date -->
            <label for="txtQuotationDate">Quotation Date:</label>
            <asp:TextBox ID="txtQuotationDate" runat="server" CssClass="input-text"></asp:TextBox><br /><br />

            <!-- Total Amount -->
            <label for="txtTotalAmount">Total Amount:</label>
            <asp:TextBox ID="txtTotalAmount" runat="server" CssClass="input-text"></asp:TextBox><br /><br />

            <!-- Status -->
            <label for="txtStatus">Status:</label>
            <asp:TextBox ID="txtStatus" runat="server" CssClass="input-text"></asp:TextBox><br /><br />

            <!-- Add Quotation Button -->
            <asp:Button ID="btnAddQuotation" runat="server" Text="Add Quotation" OnClick="btnAddQuotation_Click1" CssClass="btn-submit"  />
        </div>
    </form>
</body>
</html>
