var mysql = require('mysql');
var inquirer = require("inquirer");

var connection = mysql.createConnection({
    host: 'localhost',
    port: 3306,
    user: 'root',
    password: "Badger32",
    database: "bamazon"
});

connection.query("SELECT * FROM products", function(err, res) {
    if (err) throw err;
    for (var i = 0; i < res.length; i++) {
        console.log(res[i].item_id + ' | ' + res[i].product_name + ' | $' + res[i].price);
    }
    buyGoods();

});

function buyGoods() {
    inquirer.prompt([{
            type: "input",
            message: "What is the ID of the product you would like to buy?",
            name: "buyProduct"
        },
        {
            type: "input",
            message: "How many would you like to buy?",
            name: "quantity"
        }
    ]).then(function(answer) {
        var desiredQuantity = parseInt(answer.quantity);
        var productID = answer.buyProduct;

        connection.query("SELECT item_id, price, quantity FROM products WHERE ? ", [{
            item_id: productID
        }], function(err, res) {
            console.log(res);
            var realQuantity = res[0].quantity;

            if (desiredQuantity > realQuantity) {
                console.log("");
                console.log("I'm sorry, there are only "+ realQuantity +" in stock.");
                console.log("");
            } else {
                console.log("");
                console.log("We have your items ready!");
                console.log("__________________________");
                console.log("");
                console.log("Your Total is: $" + (res[0].price * desiredQuantity));
                console.log("");
            }
            buyMore();

        })
    })
}

function buyMore(){
  buyGoods();
}