<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Supplier Orders - Add Items with Image</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            display: flex;
            flex-direction: column;
            
            margin: 0;
            padding: 20px;
            background-color: #f5f5f5;
        }

        h2 {
            color: #024CAA;
        }

        /* Form styling */
        .add-item-form {
            width: 400px;
            margin:80px 100px 20px 100px;
            padding: 50px;
             text-align:start;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .form-field {
            margin-bottom: 15px;
        }

        .form-field label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }

        .form-field input, .form-field textarea {
            width: 100%;
            padding: 8px;
            border-radius: 4px;
            border: 1px solid #ccc;
        }

        /* Display orders styling */
        .items-list {
            max-width: 800px;
            width: 100%;
            margin-top: 20px;
        }

        .item-card {
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 8px;
            padding: 15px;
            margin-bottom: 15px;
            display: flex;
            align-items: center;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .item-card img {
            width: 100px;
            height: 100px;
            border-radius: 8px;
            object-fit: cover;
            margin-right: 15px;
        }

        .item-details {
            color: #333;
        }

        .item-name {
            font-size: 18px;
            font-weight: bold;
            margin: 0;
        }

        .item-description {
            color: #555;
            font-size: 14px;
            margin: 5px 0;
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
        </diV>
       
    </header>

   

    <!-- Add Item Form -->
   <center> <form class="add-item-form" id="itemForm">

         <h2>Add Order  Item for Supplier 02</h2>
        <div class="form-field">
            <label for="itemName">Item Name:</label>
            <input type="text" id="itemName" required>
        </div>
        <div class="form-field">
            <label for="itemQuantity">Quantity:</label>
            <input type="number" id="itemQuantity" min="1" required>
        </div>
        <div class="form-field">
            <label for="itemPrice">Unit Price:</label>
            <input type="number" id="itemPrice" min="0" required>
        </div>
        <div class="form-field">
            <label for="itemImage">Item Image:</label>
            <input type="file" id="itemImage" accept="image/*" required>
        </div>
        <button type="button" onclick="addItem()">Add Item</button>
    </form></center>

   <center> <h2>Order Items List for Supplier 02</h2>
    <div class="items-list" id="itemsList">
        <!-- Dynamically added items will appear here -->
    </div>

    <script>
        // JavaScript function to add item
        function addItem() {
            const itemName = document.getElementById("itemName").value;
            const itemQuantity = document.getElementById("itemQuantity").value;
            const itemPrice = document.getElementById("itemPrice").value;
            const itemImage = document.getElementById("itemImage").files[0];

            if (itemName && itemQuantity && itemPrice && itemImage) {
                const itemsList = document.getElementById("itemsList");

                // Create a new item card
                const itemCard = document.createElement("div");
                itemCard.classList.add("item-card");

                // Display the selected image
                const img = document.createElement("img");
                img.src = URL.createObjectURL(itemImage); // Generate a temporary URL for the image
                img.alt = itemName;
                itemCard.appendChild(img);

                // Add item details
                const itemDetails = document.createElement("div");
                itemDetails.classList.add("item-details");

                const name = document.createElement("p");
                name.classList.add("item-name");
                name.textContent = `Name: ${itemName}`;
                itemDetails.appendChild(name);

                const quantity = document.createElement("p");
                quantity.classList.add("item-description");
                quantity.textContent = `Quantity: ${itemQuantity}`;
                itemDetails.appendChild(quantity);

                const price = document.createElement("p");
                price.classList.add("item-description");
                price.textContent = `Unit Price: ${itemPrice}`;
                itemDetails.appendChild(price);

                itemCard.appendChild(itemDetails);
                itemsList.appendChild(itemCard);

                // Clear the form fields after adding
                document.getElementById("itemForm").reset();
            } else {
                alert("Please fill out all fields and select an image.");
            }
        }
    </script></center>
</body>
</html>
