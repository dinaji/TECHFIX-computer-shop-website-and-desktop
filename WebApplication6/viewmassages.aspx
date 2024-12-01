<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="viewmassages.aspx.cs" Inherits="WebApplication6.viewmassages" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>View massages</title>

    
<style>
body {
    font-family: Arial, sans-serif;
    margin: 20px;
    padding: 0;
    background-color: #f7f7f7;}

h1 {
    color: #024CAA;}

.message-table {
    width: 80%;
    border-collapse: collapse;
    margin-top: 20px;}

.message-table th, .message-table td {
    border: 1px solid #ddd;
    padding: 8px;
    text-align: left;}

.message-table th {
    background-color: #024CAA;
    color: white;}

.message-table tr:nth-child(even) {
    background-color: #f2f2f2;}

.message-table tr:hover {
    background-color: #ddd;}

form {
    width: 80%;
    margin: 0 auto;}


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
      <center>  <h1>Customer Messages</h1></center>
        <asp:Label ID="lblStatus" runat="server" ForeColor="Red"></asp:Label>
    <asp:GridView ID="MessagesGrid" runat="server" AutoGenerateColumns="False" CssClass="message-table">
    <Columns>
        <asp:BoundField DataField="Name" HeaderText="Name" />
        <asp:BoundField DataField="Email" HeaderText="Email" />
        <asp:BoundField DataField="Message" HeaderText="Message" />
      
    </Columns>
</asp:GridView>
    </form>
</body>
</html>
