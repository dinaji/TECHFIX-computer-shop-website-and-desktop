<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="storagedevices.aspx.cs" Inherits="WebApplication6.storagedevices" %>



<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server"   >
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
                        <a class="nav-link" href="#">Home</a>
                    </li>

                    <li class="header-icons">
                        <a class="nav-link" href="#">Repairs & Services</a>
                    </li>

                 <li class="header-icons">
                        <a class="nav-link" href="#">Get a Quote</a>
                    </li>

                    <li class="header-icons">
                        <a class="nav-link" href="#">Contact</a>
                    </li>

                       <li class="header-icons">
                                        <a class="nav-link" href="#">Place Order</a>
                                    </li>

                 

                    


        <div class="search-bar">
            <input type="text" placeholder="Search for products">
            
            <button>Search</button>
        </div>
        
          
            <div class="dropdown">
        <button class="dropbtn">login</button>
        <div class="dropdown-content">
            <a href="Customerlogin.aspx">Customer</a>
            <a href="Adminlogin.aspx">Admin</a>
            <a href="Supplierlogin.aspx">Supplier</a>
        </div>

                </div>
    
      
    </header>

    <div class="container">
        <nav class="sidebar">
            <ul>
                <li><a href="#">Laptops</a></li>
                <li><a href="#">Processors</a></li>
                <li><a href="#">Motherboards</a></li>
                <li><a href="#">Memory</a></li>
                <li><a href="#">Graphics Cards</a></li>
                <li><a href="#">Storage Devices</a></li>
                <li><a href="#">Desktop</a></li>
                <li><a href="#">Computer Casings</a></li>
                <li><a href="#">Monitors</a></li>
                <li><a href="#">Peripherals</a></li>
                <li><a href="#">Gaming PCs</a></li>
            </ul>
        </nav>
        
        <main>
            <div class="banner">
            
                   <h1>All Categories 50% OFF </h1>
                   
               
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
            <a href="#" class="add-to-cart">ORDER</a>
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
           <a href="#" class="add-to-cart">ORDER</a>
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
             <a href="#" class="add-to-cart">ORDER</a>
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
             <a href="#" class="add-to-cart">ORDER</a>
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
            <a href="#" class="add-to-cart">ORDER</a>
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
            <a href="#" class="add-to-cart">ORDER</a>
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
            <a href="#" class="add-to-cart">ORDER</a>
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
            <a href="#" class="add-to-cart">ORDER</a>
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
             <a href="#" class="add-to-cart">ORDER</a>
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
            <a href="#" class="add-to-cart">ORDER</a>
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
            <a href="#" class="add-to-cart">ORDER</a>
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
             <a href="#" class="add-to-cart">ORDER</a>
        </div>
    </div>




    
</div>




                        <footer>
                          <div class="footer-container">
                            <div class="footer-section">
                              
                              <ul>
                                <li><a>Contact - 0767791525</a></li>
                                <li><a>Gmail-dinajirajapaksh08@gmail.com</a></li>
                                
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
                               <div class="social-links">
    <a href="" target="_blank"><i class="fab fa-facebook"></i> Facebook</a><br />
    
    <a href="https://www.instagram.com/yourprofile" target="_blank"><i class="fab fa-instagram"></i> Instagram</a><br />
    <a href="https://www.linkedin.com/in/yourprofile" target="_blank"><i class="fab fa-linkedin"></i> LinkedIn</a>
</div>

                              </ul>
                            </div>
                          </div>
                        </footer>


</body>
</html>
