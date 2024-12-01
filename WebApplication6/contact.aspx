<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="WebApplication6.contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TechFix</title>
    <link rel="stylesheet" href="css.css">
    <style>
         /* Contact Us specific styles */
        .contact-info, .contact-form, .about-section, .mission-section, .values-section {
            margin-bottom: 40px;
            background-color: #ffffff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .contact-info h2, .contact-form h2, .about-section h2, .mission-section h2, .values-section h2 {
            color: #024CAA; /* Purple text */
            margin-bottom: 20px;
            text-align: center;
        }

        .contact-details p {
            font-size: 18px;
            margin: 10px 0;
            color: #333;
            text-align: center;
        }

        .contact-form form {
            display: flex;
            flex-direction: column;
            gap: 20px;
            max-width: 600px;
            margin: 0 auto;
        }

         input[type="text"], input[type="email"], textarea {
            width: 100%;
            padding: 10px;
            border: 2px solid #ccc;
            border-radius: 5px;
        }

        input[type="text"]:focus, input[type="email"]:focus, textarea:focus {
            border-color: #024CAA; /* Purple */
        }

        

    </style>

</head>
<body>


     <header>
        <div class="logo">
            <img src="./images/logo.png" alt="Winsoft Logo">
            <span>TechFix</span>
        </div>

                 
    </header>


   
       <section class="contact-form">
       
        <form id="form1" runat="server">

            <h2>Send Us a Message</h2>
            <div>
                <asp:Label ID="lblStatus" runat="server" Text=""></asp:Label><br /><br />

                <asp:Label ID="lblName" runat="server" Text="Name"></asp:Label><br />
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox><br /><br />

                <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label><br />
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox><br /><br />

                <asp:Label ID="lblMessage" runat="server" Text="Message"></asp:Label><br />
                <asp:TextBox ID="txtMessage" runat="server" TextMode="MultiLine" Rows="5"></asp:TextBox><br /><br />

                <asp:Button ID="btnSubmit" runat="server" Text="Send Message" OnClick="btnSubmit_Click"  />
            </div>
        </form>
    </section>


</body>
</html>
