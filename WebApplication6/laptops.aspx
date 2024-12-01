<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="storagedevices.aspx.cs" Inherits="WebApplication6.storagedevices" %>


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
                        <a class="nav-link" href="#">Home</a>
                    </li>

                    <li class="header-icons">
                        <a class="nav-link" href="#">Repairs & Services</a>
                    </li>

                    <li class="header-icons">
                        <a class="nav-link" href="contact.aspx">Contact</a>
                    </li>


        <div class="search-bar">
            <input type="text" placeholder="Search for products">
            
            <button>Search</button>
        </div>
        <div class="header-icons">
            <a href="login.aspx">Login / Register</a>
            <a href="#"><span>♥</span></a>
            <a href="#"><span>🛒</span><span>0.00</span></a>
        </div>
    </header>


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

        <img src="./images/laptop3.jpg" alt="Product Image">
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
        <img src="./images/laptop4.jpg" alt="Product Image">
        <div class="product-details">
            <h4>Acer Nitro V 15 ANV15-51-52AM Gaming – i5  Intel Core i5-13420H Processor/512GB PCIe NVMe SSD/8GB DDR5 RAM/15.6″, 1920 x 1080, 144 Hz Refresh Rate, IPS Display/6GB NVIDIA GeForce RTX 3050 Laptop GPU Graphics</h4>
            <div class="status">In Stock</div>
            <div class="price">
                <span class="old-price">Rs 375,000/=</span> Rs 275,000/=
            </div>
             <a href="customerorder.aspx" class="add-to-cart">ORDER</a>
        </div>
    </div>


               <!-- Product 1 -->
    <div class="product">
        <span class="badge new">NEW</span>
        
        <img src="./images/hardware4.jpg" alt="Product Image">
        <div class="product-details">
            <h4>Asus ExpertBook B3 Flip – i7 Intel Core i7-1255U Processor/ 512GB M.2 NVMe SSD/16GB DDR4 SO-DIMM RAM</h4>
            <div class="status">In Stock</div>
            <div class="price">
                <span class="old-price">Rs. 300,000/=</span> Rs. 285,000/=
            </div>
             <a href="customerorder.aspx" class="add-to-cart">ORDER</a>
        </div>
    </div>

    <!-- Product 2 -->
    <div class="product">
        <span class="badge new">NEW</span>
       
        <img src="./images/hardware3.jpg" alt="Product Image">
        <div class="product-details">
            <h4>Asus ExpertBook B1 B1502CVA – i5 Intel Core i5-1335U Processor/512GB M.2 PCIe 4.0 SSD/ 8GB DDR4 RAM</h4>
            <div class="status">In Stock</div>
            <div class="price">
                <span class="old-price">Rs  255,000/=</span> Rs 245,000/=
            </div>
           <a href="customerorder.aspx" class="add-to-cart">ORDER</a>
        </div>
    </div>

    
    <!-- Product 3 -->
    <div class="product">
       <span class="badge new">NEW</span>

        <img src="./images/laptop7.png" alt="Product Image">
        <div class="product-details">
            <h4>Asus ExpertBook B1402CBA– i5  Intel Core i5-1235U Processor/8GB DDR4 2800MHz RAM/512GB NVME M.2 SSD/14″ FHD (1920 x 1080), Display</h4>
            <div class="status">In Stock</div>
            <div class="price">
                <span class="old-price">Rs 195,000/=</span> Rs 185,000/=
            </div>
             <a href="customerorder.aspx" class="add-to-cart">ORDER</a>
        </div>
    </div>

    
    <!-- Product 4 -->
    <div class="product">
        <span class="badge new">NEW</span>
        <img src="./images/laptop8.png" alt="Product Image">
        <div class="product-details">
            <h4>Asus Vivobook S 14 M5406 – Ryzen 9  AMD Ryzen AI 9 365 Processor/1TB M.2 NVMe SSD/24GB LPDDR5X RAM</h4>
            <div class="status">In Stock</div>
            <div class="price">
                <span class="old-price">Rs 565,000/=</span> Rs 555,000/=
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




   </div>
    </form>

    
</body>
</html>
