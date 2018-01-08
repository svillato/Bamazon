var mysql = require("mysql");
var inquirer = require('inquirer');

var connection = mysql.createConnection({
  host: "localhost",
  port: 8889,

  // Your username
  user: "root",

  // Your password
  password: "root",
  database: "bamazon"
});

connection.connect(function(err) {
  if (err) throw err;
  console.log("connected as id " + connection.threadId + "\n");
});

connection.query("SELECT *FROM products", function (err, res){
    if (err) throw err;
    for (var i = 0; i < res.length; i++){
        console.log("\n Item Number: " + res[i].item_id, 
        "\n Product Name: " + res[i].product_name, 
        "\n Department: " + res[i].department_name, 
        "\n Price: $" + res[i].price,
        "\n Quantity in Stock: " + res[i].stock_quantity,
        "\n---------------------------------");
    };
    
function start(){
    connection.query("SELECT * FROM products", function(err, results) {
        if (err) throw err;
    inquirer
    .prompt([{
        name: "purchaseId",
        type: "input",
        message: "What is the ID number of the product you wish to purchase?"
      },
        {
            name: "quantity",
            type: "input",
            message: "How many of this product do you want to purchase?"
        }])
    .then (function(answer){
        var item;
        for (var i = 0; i < results.length; i++) {
          if (results[i].item_id === answer.choice) {
            item = results[i];
          }
        }

    })   
    
}
start(); 
//connection.end();
});
