<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admindashboard.aspx.cs" Inherits="WebApplication6.Admindashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TechFix</title>
   

    <style>

        * {
    
    box-sizing: border-box;
   
}



.nav-bar {
    display: flex;
    justify-content: space-between;
    align-items:center;
    background-color: #fff;
    padding: 10px 30px;
    border-bottom: 1px solid #ccc;
}

.logo {
    font-size: 1.5rem;
    font-weight: bold;
}

.logo span {
    color: #007bff;
}

nav ul {
    display: flex;
    list-style: none;
}

nav ul li {
    margin: 0 15px;
}

nav ul li a {
    text-decoration: none;
    color: #333;
    font-size: 1rem;
}

.user-icon {
    font-size: 1.5rem;
}

.dashboard {
    max-width: 1200px;
    margin: 50px auto;
    text-align: center;
}

.dashboard h1 {
    font-size: 2rem;
    margin-bottom: 20px;
}

.card-container {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    gap: 10px;
    padding: 20px;
}

.card {
    background-color: #fff;
    border-radius: 8px;
    padding: 20px;
    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
    text-align: center;
}

.card h2 {
    font-size: 1.5rem;
    margin-bottom: 10px;
}

.card p {
    font-size: 1rem;
    color: #777;
    margin-bottom: 15px;
}

.card button {
    background-color: #007bff;
    color: white;
    border: none;
    padding: 10px 20px;
    border-radius: 5px;
    cursor: pointer;
}

.card button:hover {
    background-color: #0056b3;
}

    </style>
   
</head>
<body>
    <header>
        <div class="nav-bar">
            <div class="logo">Admin<span>Panel</span></div>
            <nav>
                <ul>
                    <li><a href="homepage.aspx">home</a></li>

                    <li><a href="Reparing.aspx">Reparing Request</a></li>
                    <li><a href="viewquotation.aspx">Customer Quotation</a></li>
                   <li><a href="vieworders.aspx">View Orders</a></li>
                    <li><a href="viewmassages.aspx">View Contact Messages</a></li>
                    <li><a href="viewinventory.aspx">View Overall Ineventory</a></li>
                   <!--  <li><a href="supplier01_view_inventory.aspx">View Supplier 01 Ineventory</a></li>
                     <li><a href="supplier2_view-inventory.aspx">View Supplier 02 Ineventory</a></li>-->
                    
                    <li><a href="Admin_add_product.aspx">Add Products</a></li>



                                    <form id="form1" runat="server">
                    <asp:Button ID="LogoutButton3" runat="server" Text="Logout" OnClick="LogoutButton3_Click" />
                </form>


                </ul>
            </nav>
            <div class="user-icon">
                <i class="fas fa-user"></i>
            </div>
        </div>
    </header>

    <main>
        <section class="dashboard">
            <h1>DASHBOARD</h1>
            <div class="card-container">
                <div class="card">
                   <h2>****</h2>
                    <p>total pendings</p>
                    <button><a href="Reparing.aspx">View Repair Requests</a></button>
                </div>
                <div class="card">
                    <h2>****</h2>
                    <p>total pendings</p>
                    <button><a href="viewquotation.aspx">See Quotation</a></button>
                </div>

                 <div class="card">
                   <h2>****</h2>
                    <p>total pendings</p>
                    <button><a href="vieworders.aspx">See orders</a></button>
                </div>

                 <div class="card">
                   <h2>****</h2>
                    <p>total pendings</p>
                    <button><a href="viewmassages.aspx">See Contact Messages</a></button>
                </div>

                 <div class="card">
                   <h2>****</h2>
                    <p>total pendings</p>
                    <button><a href="viewinventory.aspx">See Overall Inventory</a></button>
                </div>


               

               

                <div class="card">
                   <h2>****</h2>
                    <p>total pendings</p>
                    <button><a href="Admin_add_product.aspx">Add Products</a></button>
                </div>
               

            </div>
        </section>
    </main>
</body>
</html>
