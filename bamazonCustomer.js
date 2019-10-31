var mysql = require("mysql");
var inquirer = require("inquirer");
var connection = mysql.createConnection({
  host: "localhost",

  // Your port; if not 3306
  port: 3306,

  // Your username
  user: "root",

  // Your password
  password: "12345678",
  database: "bamazon"
});

connection.connect(function(err) {
  if (err) throw err;
  // console.log("connected as id " + connection.threadId);
  displayProducts();
});

function displayProducts() {
  connection.query("SELECT * FROM products", function(err, res) {
    if (err) throw err;
    for (var i = 0; i < res.length; i++) {
			console.log("Product ID: " + res[i].item_id + " || Product Name: " +
						res[i].product_name + " || Price: " + res[i].price);
		}

		// Requests product and number of product items user wishes to purchase.
  		requestProduct();
	});
}



function requestProduct() {
  inquirer
    .prompt([
      {
      type: 'input',
			name: 'item_id',
			message: 'Please enter the product ID which you would like to purchase.'
      
    },
    {
			type: 'input',
			name: 'quantity',
			message: 'How many do you need?'
		}
  ])
    .then(function(answer) {
  
    }); 
}
