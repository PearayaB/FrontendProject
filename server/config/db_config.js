var mysql = require("mysql");
var connection = mysql.createConnection('mysql://root:@localhost')

connection.connect((err) => {
    if(err){
        console.log(err);
        return;
    }
    console.log(connection.threadId);
});
module.exports = connection;