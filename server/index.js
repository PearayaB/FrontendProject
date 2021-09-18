const express = require("express");
const cors = require("cors");
const mysql = require("mysql2");

const app = express();

const connect = mysql.createConnection({
    host: 'localhost', 
    user: 'root',
    password: '',
    database: 'camt_dii'
});
connect.connect((err)=>{
    if(err){
        throw err;
    }
});

app.use(cors());

app.get('/', (req,res) => {
    return res.status(200).json({
        message: 'Hello express' 
    });
});

app.get('/api/top_menu', (req, res) => {
    const sql = "SELECT id, name_menu FROM menu LIMIT 5";
    connect.query(sql, (err, result) => {
        if (err) {
            throw err;
        } else {
            return res.status(200).json(result);
        }
    });
});

app.get('/api/randomNation', (req,res) => {
    const randomNation = req.query.randomNation;
    const arr = randomNation.split(',');
    const sql = "SELECT * FROM nation WHERE id IN (?)";
    connect.query(sql, [arr], (err, result) => {
        if (err) {
            throw err;
        } else {
            return res.status(200).json(result);
        }
    })
})

app.get('/api/randomIngredient', (req,res) => {
    const randomIngredient = req.query.randomIngredient;
    const arr = randomIngredient.split(',');
    const sql = "SELECT * FROM ingredient WHERE In_id IN (?)";
    connect.query(sql, [arr], (err, result) => {
        if (err) {
            throw err;
        } else {
            return res.status(200).json(result);
        }
    })
})

app.get('/api/randomDrink', (req,res) => {
    const randomDrink = req.query.randomDrink;
    const arr = randomDrink.split(',');
    const sql = "SELECT * FROM ingredient WHERE In_id LIMIT 6,12";
    let count = 0;
    connect.query(sql, [arr], (err, result) => {
        if (err) {
            throw err;
        } else {
            let data = []
            arr.forEach((id) => {
                result.forEach((item) => {
                    if (item.In_id == id) {
                        data.push(item);
                    }
                })
            })

            return res.status(200).json(data);
        }
    })
})

app.listen(5050,()=>{
    console.log('server running on port 5050');
});