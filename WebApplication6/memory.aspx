﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="storagedevices.aspx.cs" Inherits="WebApplication6.storagedevices" %>


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
        
        <img src="./images/ram1.jpg" alt="Product Image">
        <div class="product-details">
            <h4>ADATA 8GB DDR4 3200MHz SO-DIMM NoteBook Memory Module Type SO-DIMM
– Form Factor Standard 1.18″ height</h4>
            <div class="status">In Stock</div>
            <div class="price">
                <span class="old-price">Rs. 8,500/=</span> Rs. 8,250/=
            </div>
            <a href="customerorder.aspx" class="add-to-cart">ORDER</a>
        </div>
    </div>

    <!-- Product 2 -->
    <div class="product">
        <span class="badge new">NEW</span>
       
        <img src="./images/ram2.jpg" alt="Product Image">
        <div class="product-details">
            <h4>G.SKILL Aegis 8GB F3-1600C11S-8GIS Memory G.SKILL | 1600MHz | 8GB 4X1</h4>
            <div class="status">In Stock</div>
            <div class="price">
                <span class="old-price">Rs  8,650/=</span> Rs 8,500/=
            </div>
            <a href="customerorder.aspx" class="add-to-cart">ORDER</a>
        </div>
    </div>


            <div class="product">
        <span class="badge new">NEW</span>
        
        <img src="./images/ram1.jpg" alt="Product Image">
        <div class="product-details">
            <h4>ADATA 8GB DDR4 3200MHz SO-DIMM NoteBook Memory Module Type SO-DIMM- Form Factor Standard 1.18″ height</h4>
            <div class="status">In Stock</div>
            <div class="price">
                <span class="old-price">Rs. 8,500/=</span> Rs. 8,250/=
            </div>
            <a href="customerorder.aspx" class="add-to-cart">ORDER</a>
        </div>
    </div>

    <!-- Product 2 -->
    <div class="product">
        <span class="badge new">NEW</span>
       
        <img src="./images/ram2.jpg" alt="Product Image">
        <div class="product-details">
            <h4>G.SKILL Aegis 8GB F3-1600C11S-8GIS Memory G.SKILL | 1600MHz | 8GB 4X1</h4>
            <div class="status">In Stock</div>
            <div class="price">
                <span class="old-price">Rs  8,650/=</span> Rs 8,500/=
            </div>
            <a href="customerorder.aspx" class="add-to-cart">ORDER</a>
        </div>
    </div>

    
    <!-- Product 1 -->
    <div class="product">
        <span class="badge new">NEW</span>
        
        <img src="./images/ram1.jpg" alt="Product Image">
        <div class="product-details">
            <h4>ADATA 8GB DDR4 3200MHz SO-DIMM NoteBook Memory Module Type SO-DIMM- Form Factor Standard 1.18″ height</h4>
            <div class="status">In Stock</div>
            <div class="price">
                <span class="old-price">Rs. 8,500/=</span> Rs. 8,250/=
            </div>
            <a href="customerorder.aspx" class="add-to-cart">ORDER</a>
        </div>
    </div>

    <!-- Product 2 -->
    <div class="product">
        <span class="badge new">NEW</span>
       
        <img src="./images/ram2.jpg" alt="Product Image">
        <div class="product-details">
            <h4>G.SKILL Aegis 8GB F3-1600C11S-8GIS Memory G.SKILL | 1600MHz | 8GB 4X1</h4>
            <div class="status">In Stock</div>
            <div class="price">
                <span class="old-price">Rs  8,650/=</span> Rs 8,500/=
            </div>
             <a href="customerorder.aspx" class="add-to-cart">ORDER</a>
        </div>
    </div>


            <div class="product">
        <span class="badge new">NEW</span>
        
        <img src="./images/ram1.jpg" alt="Product Image">
        <div class="product-details">
            <h4>ADATA 8GB DDR4 3200MHz SO-DIMM NoteBook Memory Module Type SO-DIMM-Form Factor Standard 1.18″ height</h4>
            <div class="status">In Stock</div>
            <div class="price">
                <span class="old-price">Rs. 8,500/=</span> Rs. 8,250/=
            </div>
             <a href="customerorder.aspx" class="add-to-cart">ORDER</a>
        </div>
    </div>

    <!-- Product 2 -->
    <div class="product">
        <span class="badge new">NEW</span>
       
        <img src="./images/ram2.jpg" alt="Product Image">
        <div class="product-details">
            <h4>G.SKILL Aegis 8GB F3-1600C11S-8GIS Memory G.SKILL | 1600MHz | 8GB 4X1</h4>
            <div class="status">In Stock</div>
            <div class="price">
                <span class="old-price">Rs  8,650/=</span> Rs 8,500/=
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