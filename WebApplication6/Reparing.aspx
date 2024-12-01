<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reparing.aspx.cs" Inherits="WebApplication6.Reparing" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">


    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TechFix</title>
    <link rel="stylesheet" href="css.css">


    <style>
       

.container {
    background-color: #fff;
    padding: 20px;
    margin: 50px auto ;
    max-width: 800px;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

h2 {
    text-align: center;
    margin-bottom: 30px;
}

table {
    width: 100%;
    border-collapse: collapse;
    margin-top: 20px;
}

thead {
    background-color: #024CAA;
    color: white;
}

th, td {
    border: 1px solid #ccc;
    padding: 10px;
    text-align: left;
}

th {
    font-weight: bold;
}

tr:nth-child(even) {
    background-color: #f2f2f2;
}


/* Container for the logo and text */
.header {
  
    background-color: #0055b3; /* Blue background */
    display: flex;
    align-items: center;
    padding: 10px; /* Adjust as needed */
}

/* Style for the logo */
.header img {
    width: 30px; /* Adjust logo size */
    height: 20px;
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
    <div>
     
  
    

  <center>  <div class="container">
       
       
        <table>
            <thead>
                <tr>
                    <th>Request ID</th>
                    <th>Customer Name</th>
                    <th>Repair Type</th>
                    <th>Description</th>
                    <th>Status</th>
                    <th>Request Date</th>
                </tr>
            </thead>
            <tbody>
                <asp:Repeater ID="RepairRequestRepeater" runat="server">
                    <ItemTemplate>
                        <tr>
                            <td><%# Eval("RequestID") %></td>
                            <td><%# Eval("CustomerName") %></td>
                            <td><%# Eval("RepairType") %></td>
                            <td><%# Eval("Description") %></td>
                            <td><%# Eval("Status") %></td>
                            <td><%# Eval("RequestDate", "{0:yyyy-MM-dd}") %></td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </tbody>
        </table>
    </div></center>
</body>
</html>
