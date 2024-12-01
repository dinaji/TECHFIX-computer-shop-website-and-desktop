<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addproducts.aspx.cs" Inherits="WebApplication6.addproducts" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TechFix</title>
    <link rel="stylesheet" href="css.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">
    <!-- bootstrap links -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <!-- bootstrap links -->
    <!-- fonts links -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Merriweather&display=swap" rel="stylesheet">
    <!-- fonts links -->
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <nav class="navbar navbar-expand-lg" id="navbar">
        <div class="container-fluid">
            <a class="navbar-brand" href="index.html" id="logo"><span id="span1">TechFix</span></a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span><img src="./images/menu.png" alt="" width="30px"></span>
            </button>

    </nav>


    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
            <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="index.html">Home</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Product</a>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                    Category
                </a>
                <ul class="dropdown-menu" aria-labelledby="navbarDropdown" style="background-color: #6439FF;">
                    <li><a class="dropdown-item" href="hardware.html">Hardware</a></li>
                    <li><a class="dropdown-item" href="Peripherals.html">Peripherals</a></li>
                    <li><a class="dropdown-item" href="Accessories.html">Accessories</a></li>
                    <li><a class="dropdown-item" href="software.html">Software</a></li>
                    <li><a class="dropdown-item" href="othertechnology.html">Other Technology</a></li>

                </ul>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Repairs & Services</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="contact.html">Contact</a>
            </li>
        </ul>
        <form class="d-flex" id="search">
            <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-success" type="submit">Search</button>
        </form>
    </div>
    </div>
    </nav>




    <section class="add-products">

        <form action="" method="post" enctype="multipart/form-data">

            <h1 class="heading">add product</h1>



            <input type="text" class="box" required maxlength="100" placeholder="enter product name" name="name">
            <input type="number" min="0" class="box" required max="9999999999" placeholder="enter product price" onkeypress="if(this.value.length == 10) return false;" name="price">
            <input type="file" name="image" accept="image/jpg, image/jpeg, image/png" class="box" required>
            <input type="submit" value="add product" class="btn" name="add_product">

        </form>

    </section>

    <section class="show-products">

        <h1 class="heading">products added</h1>

        <div class="box-container">


            <div class="box">
                <div class="price">Rs<span><?= $fetch_products['price']; ?></span>/-</div>
                <img src="uploaded_img/<?= $fetch_products['image']; ?>" alt="">
                <div class="name"><?= $fetch_products['name']; ?></div>
                <div class="flex-btn">
                    <a href="admin_product_update.php?update=<?= $fetch_products['id']; ?>" class="option-btn">update</a>
                    <a href="admin_products.php?delete=<?= $fetch_products['id']; ?>" class="delete-btn" onclick="return confirm('delete this product?');">delete</a>
                </div>
            </div>


    </div>
    </form>
</body>
</html>
