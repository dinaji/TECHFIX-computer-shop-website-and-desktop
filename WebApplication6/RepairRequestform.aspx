<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RepairRequestform.aspx.cs" Inherits="WebApplication6.RepairRequestform" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">


    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TechFix</title>
    

    <style>
body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
    padding: 20px;
}

.repair-form-container {
   background-color:white;
    padding: 20px;
    margin: 80px auto;
    max-width: 500px;
    border-radius: 5px;
   
}

h2 {
    text-align: center;
    margin-bottom: 20px;
    color:#024CAA;
}

label {
    display: block;
    margin-bottom: 5px;
    font-weight: bold;
}

.form-control {
    width: 100%;
    padding: 10px;
    margin-bottom: 20px;
    border: 1px solid #ccc;
    border-radius: 5px;}

.btn-primary {
    width: 100%;
    padding: 10px;
    background-color:  #024CAA;
    color: white;
    border: none;
    border-radius: 5px;
    cursor: pointer;}

.btn-primary:hover {
    background-color:#024CAA;
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
    
    <div class="repair-form-container">
        
      <center> <form id="repairRequestForm" runat="server">
           <h2>Submit a Repair Request</h2></center> 
            <label for="customerName">Customer Name</label>
            <asp:TextBox ID="CustomerName" runat="server" CssClass="form-control" required="required"></asp:TextBox>

            <label for="repairType">Repair Type</label>
            <asp:TextBox ID="RepairType" runat="server" CssClass="form-control" required="required"></asp:TextBox>

            <label for="description">Description</label>
            <asp:TextBox ID="Description" runat="server" TextMode="MultiLine" CssClass="form-control" required="required"></asp:TextBox>
       
        
          <label for="status">Status</label>
            <asp:DropDownList ID="Status" runat="server" CssClass="form-control">
                <asp:ListItem Value="Pending" Text="Imediately want" />
                <asp:ListItem Value="In Progress" Text="In Progress" />
                <asp:ListItem Value="Completed" Text="Completed" />
            </asp:DropDownList>
           

            <asp:Button ID="SubmitButton" runat="server" Text="Submit Request" CssClass="btn btn-primary" OnClick="SubmitButton_Click" />
        </form>
    </div>
</body>
</html>
