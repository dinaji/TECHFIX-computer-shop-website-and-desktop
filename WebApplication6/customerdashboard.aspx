<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="customerdashboard.aspx.cs" Inherits="WebApplication6.customerdashboard" %>

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
                        <a class="nav-link" href="homepage.aspx">Home</a>
                    </li>

                    <li class="header-icons">
                        <a class="nav-link" href="RepairRequestform.aspx">Repairs & Services</a>
                    </li>

                 <li class="header-icons">
                        <a class="nav-link" href="customerquotation.aspx">Get a Quote</a>
                    </li>

                    <li class="header-icons">
                        <a class="nav-link" href="contact.aspx">Contact</a>
                    </li>

       <li class="header-icons">
                        <a class="nav-link" href="customerorder.aspx">Place Order</a>
                    </li>




        <div class="search-bar">
            <input type="text" placeholder="Search for products">
            
            <button>Search</button>
        </div>
        
            
                                
    </header>

    <div class="container">
        <nav class="sidebar">
            <ul>
                <li><a href="laptops.aspx">Laptops</a></li>
                <li><a href="processors.aspx">Processors</a></li>
                <li><a href="motherboards.aspx">Motherboards</a></li>
                <li><a href="memory.aspx">Memory</a></li>
                <li><a href="graphiccards.aspx">Graphics Cards</a></li>
                <li><a href="storagedevices.aspx">Storage Devices</a></li>
                <li><a href="desktop.aspx">Desktop</a></li>
                <li><a href="casing.aspx">Computer Casings</a></li>
                <li><a href="monitors.aspx">Monitors</a></li>
                <li><a href="peripherals.aspx">Peripherals</a></li>
                <li><a href="gaming.aspx">Gaming PCs</a></li>
            </ul>
        </nav>
        
        <main>
            <div class="banner">
                <div class="promo-text">
                    <h1>Electronic Gadget 50% Off Shop Now</h1>
                   
                </div>
            </div>
        </main>
    </div>

 
    
    



<div class="product-grid">
    <!-- Product 1 -->
    <div class="product">
        <span class="badge new">NEW</span>
        
        <img src="./images/laptop1.jpg" alt="Product Image">
        <div class="product-details">
            <h4>Acer aspire 5 A515 i5 Intel core i5 – 1135G7 Processor/1TB Hard Drive/8GB DDR4 RAM/Nvidia 350 2GB Graphics/15.6″ FHD IPS Display/Windows 10 Home</h4>
            <div class="status">In Stock</div>
            <div class="price">
                <span class="old-price">Rs. 339,900.00</span> Rs. 309,900.00
            </div>
             <a href="customerorder.aspx" class="add-to-cart">ORDER</a>
        </div>
    </div>

    <!-- Product 2 -->
    <div class="product">
        <span class="badge new">NEW</span>
       
        <img src="./images/laptop2.jpg" alt="Product Image">
        <div class="product-details">
            <h4>Acer aspire a515 i5 Intel core i5 1135G7 Processor/1TB Hard Drive/4GB DDR4 Ram/15.6 FHD IPS Display/Intel Iris Xe Graphics/Windows 10 Home</h4>
            <div class="status">In Stock</div>
            <div class="price">
                <span class="old-price">Rs  285,000/=</span> Rs 232,000/=
            </div>
             <a href="customerorder.aspx" class="add-to-cart">ORDER</a>
        </div>
    </div>

    
    <!-- Product 3 -->
    <div class="product">
       <span class="badge new">NEW</span>

        <img src="./images/desktop1.jpg" alt="Product Image">
        <div class="product-details">
            <h4>Dell Vostro 3020 Core i3 13th Gen Compact Desktop Computer/ Vostro 3020 | Core i3-13100| 8GB | 512GB SSD | DVD  | DOS</h4>
            <div class="status">In Stock</div>
            <div class="price">
                <span class="old-price">Rs 195,000/=</span> Rs 167,000/=
            </div>
             <a href="customerorder.aspx" class="add-to-cart">ORDER</a>
        </div>
    </div>

    
    <!-- Product 4 -->
    <div class="product">
        <span class="badge new">NEW</span>
        <img src="./images/motherboard1.jpg" alt="Product Image">
        <div class="product-details">
            <h4>MSI B550M PRO-VDH (Wi-Fi) Motherboard Ryzen™ | B550 | AM4 SOCKET | WIFI</h4>
            <div class="status">In Stock</div>
            <div class="price">
                <span class="old-price">Rs 75,000/=</span> Rs 62,000/=
            </div>
             <a href="customerorder.aspx" class="add-to-cart">ORDER</a>
        </div>
    </div>

    
    <!-- Product 5 -->
    <div class="product">
        <span class="badge new">NEW</span>
        <img src="./images/ram1.jpg" alt="Product Image">
        <div class="product-details">
            <h4>ADATA 8GB DDR4 3200MHz SO-DIMM NoteBook Memory /Memory Type DDR4/Standard JEDEC/Density 8GB/Speed 3200MHz</h4>
            <div class="status">In Stock</div>
            <div class="price">
                <span class="old-price">Rs 9,000/=</span> Rs 8,250/= 
            </div>
             <a href="customerorder.aspx" class="add-to-cart">ORDER</a>
        </div>
    </div>


    <!-- Product 3 -->
    <div class="product">
       <span class="badge new">NEW</span>

        <img src="./images/processor1.jpg" alt="Product Image">
        <div class="product-details">
            <h4>AMD Ryzen 5 5500 Ryzen 5 | 5500 | 3.60 GHz IPS PANEL | 2K | 180Hz</h4>
            <div class="status">In Stock</div>
            <div class="price">
                <span class="old-price">Rs 38,500/=</span> Rs 33,500/=
            </div>
             <a href="customerorder.aspx" class="add-to-cart">ORDER</a>
        </div>
    </div>

    
    <!-- Product 4 -->
    <div class="product">
        <span class="badge new">NEW</span>
        <img src="./images/desktop2.jpg" alt="Product Image">
        <div class="product-details">
            <h4>TECH-GAMING Intel® Core™ i7-12700 + RTX 3050 8GB Graphics Custom Build Desktop Computer TECH-GAMING | Assemble | Intel® Core™ i7-12700 | 16GB </h4>
            <div class="status">In Stock</div>
            <div class="price">
                <span class="old-price">Rs 500,000/=</span> Rs 445,000/=
            </div>
             <a href="customerorder.aspx" class="add-to-cart">ORDER</a>
        </div>
    </div>

    
    <!-- Product 5 -->
    <div class="product">
        <span class="badge new">NEW</span>
        <img src="./images/keyboard1.jpg" alt="Product Image">
        <div class="product-details">
            <h4>Razer Ornata V2 – US Mecha-membrane GAMING KEYBOARD USB | RGB | Razer™ Hybrid Mecha-Membrane GAMING KEYBOARD</h4>
            <div class="status">In Stock</div>
            <div class="price">
                <span class="old-price">Rs 24,500/=</span> Rs 24,000/= 
            </div>
           <a href="customerorder.aspx" class="add-to-cart">ORDER</a>
        </div>
    </div>


    <div class="product">
        <span class="badge new">NEW</span>
        <img src="./images/ac1.jpg" alt="Product Image">
        <div class="product-details">
            <h4> Dell Mini Display to DVI Single-Link Adapter MINI DISPLAY TO DIVI SINGLE-LINK | ADAPTER</h4>
            <div class="status">In Stock</div>
            <div class="price">
                <span class="old-price">Rs 4,500/=</span> Rs 4,000/= 
            </div>
              <a href="customerorder.aspx" class="add-to-cart">ORDER</a>
        </div>
    </div>


    <div class="product">
        <span class="badge new">NEW</span>
        <img src="./images/cartridge1.jpg" alt="Product Image">
        <div class="product-details">
            <h4>Canon Ink CL-811 Colour Original Cartridge Ink Cartridge | Black | CL-811</h4>
            <div class="status">In Stock</div>
            <div class="price">
                <span class="old-price">Rs 9,000/=</span> Rs 8,900/= 
            </div>
            <a href="customerorder.aspx" class="add-to-cart">ORDER</a>
        </div>
    </div>


    <div class="product">
        <span class="badge new">NEW</span>
        <img src="./images/monitor1.jpg" alt="Product Image">
        <div class="product-details">
            <h4>ViewSonic VX2728-2K 27″ INCH 2K 180Hz GAMING Monitor IPS PANEL | 2K | 180Hz</h4>
            <div class="status">In Stock</div>
            <div class="price">
                <span class="old-price">Rs 110.000/=</span> Rs 98,000/= 
            </div>
            <a href="customerorder.aspx" class="add-to-cart">ORDER</a>
        </div>
    </div>

    <div class="product">
        <span class="badge new">NEW</span>
        <img src="./images/pe3.jpg" alt="Product Image">
        <div class="product-details">
            <h4>Logitech G331 GAMING Headset Logitech | G331 | 3.5MM |GAMING</h4>
            <div class="status">In Stock</div>
            <div class="price">
                <span class="old-price">Rs 24,500/=</span> Rs 17,000/= 
            </div>
             <a href="customerorder.aspx" class="add-to-cart">ORDER</a>
        </div>
    </div>
    
</div>




                        <footer>
                          <div class="footer-container">
                            <div class="footer-section">
                              <h4>Usefull Links</h4>
                              <ul>
                                <li><a>Home</a></li>
                                <li><a>Product</a></li>
                                <li><a>Category</a></li>
                                <li><a>Repairs & Services</a></li>
                                <li><a>Contact</a></li>
                              </ul>
                            </div>
                            <div class="footer-section">
                              <h4>Our Services</h4>
                              <ul>
                                <li><a>Hardware</a></li>
                                <li><a>Software</a></li>
                              </ul>
                            </div>
                            <div class="footer-section">
                              <h4>Our Social Networks</h4>
                              <ul>
                                <li><a><i class="fa fa-facebook"></i></a></li>
                                <li><a><i class="fa fa-twitter"></i></a></li>
                                <li><a><i class="fa fa-instagram"></i></a></li>
                                <li><a><i class="fa fa-skype"></i></a></li>
                                <li><a><i class="fa fa-linkedin"></i></a></li>
                              </ul>
                            </div>dinajiimesha124@gmail.com
                          </div>
                        </footer>


</body>
</html>
