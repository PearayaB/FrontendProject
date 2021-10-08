import React from 'react'
import Axios from "axios";
import { useState } from 'react'

function App() {
  const [namemenu, setNamemenu] = useState("");
  const [price, setPrice] = useState(0);
  const [nation, setNation] = useState("");
  const [ingredient, setIngredient] = useState("");
  const [newPrice, setNewPrice] = useState(0);

  const [menuList, setMenuList] = useState([]);

/*ตอนrun port หนูใช้portคนละเซิร์ฟกันค่ะตอนรันใช้port3001แล้วrunได้ซึ่งport3001อยู่ในไฟล์DEMOค่ะ
เลยทำให้มีปัญหานิดหน่อยตอนดึงdatabaseเข้ามาในไฟล์โปรเจคค่ะ ซึ่งในport3001มีตารางmymenuที่มีข้อมูลทุกอย่าง
เหมือนกับport5050ตารางaddmenuทุกประการ เวลาแก้ไขจะแก้เป็น http://localhost:3001/mymenu 
ใน line:20,26 และแก้ไขในหน้าindex.js เป็นSELECT * FROM mymenu ใน line: 113,129,145,159
ซึ่งจะสามารถใช้งานฟังชั่นAdd UpdateและDeleteได้ ถ้าหากอาจารย์ต้องการไฟล์DEMO
สามารถตอบกลับemailเพื่อขอไฟล์DEMOและดาต้าเบสนั้นได้ค่ะ*/
  const getMymenu = () => {
    Axios.get("http://localhost:5050/addmenu").then((response) => {
      setMenuList(response.data);
    });
  };

  const addMenu = () => {
    Axios.post("http://localhost:5050/addmenu", {
      namemenu: namemenu,
      price: price,
      nation: nation,
      ingredient: ingredient
    }).then(() => {
      setMenuList([
        ...menuList,
        {
          namemenu: namemenu,
          price: price,
          nation: nation,
          ingredient: ingredient
        },
      ]);
    });
  };

  const updatePrice = (id) => {
    Axios.put("http://localhost:5050/update", { price: newPrice, id: id }).then(
      (response) => {
        setMenuList(
          menuList.map((val) => {
            return val.id == id
              ? {
                  id: val.id,
                  namemenu: val.namemenu,
                  nation: val.nation,
                  price: val.price,
                  ingredient: val.ingredient,
                  price: newPrice,
                }
              : val;
          })
        );
      }
    );
  };

  const deleteMenu = (id) => {
    Axios.delete(`http://localhost:5050/delete/${id}`).then((response) => {
      setMenuList(
        menuList.filter((val) => {
          return val.id != id;
        })
      );
    });
  };

  return (
    <div className="container">
      <h1>My Menu</h1>
      <div className="menu">
        <form action="">
          <div className="mb-3">
            <label className="form-label" htmlFor="name">
              Namemenu:
            </label>
            <input
              type="text"
              className="form-control"
              placeholder="Enter Namemenu"
              onChange={(event) => {
                setNamemenu(event.target.value)
              }}
            />
          </div>
          <div className="mb-3">
            <label htmlFor="age">Price:</label>
            <input
              type="number"
              className="form-control"
              placeholder="Enter Price"
              onChange={(event) => {
                setPrice(event.target.value)
              }}
            />
          </div>
          <div className="mb-3">
            <label htmlFor="country">Nation:</label>
            <input
              type="text"
              className="form-control"
              placeholder="Enter Nation"
              onChange={(event) => {
                setNation(event.target.value)
              }}
            />
          </div>
          <div className="mb-3">
            <label htmlFor="Position">Ingredient:</label>
            <input
              type="text"
              className="form-control"
              placeholder="Enter Ingredient"
              onChange={(event) => {
                setIngredient(event.target.value)
              }}
            />
          </div>
          <button onClick={addMenu} class="btn btn-success">
            Add Mymenu
          </button>
        </form>
      </div>
      <hr />
      <div className="showmenu">
        <button class="btn btn-primary" onClick={getMymenu}>
          Show Mymenu
        </button>
        <br />
        <br />
        {menuList.map((val, key) => {
          return (
            <div className="menu card">
              <div className="card-body text-left">
                <p className="card-text">Namemenu: {val.namemenu}</p>
                <p className="card-text">Price: {val.price}</p>
                <p className="card-text">Nation: {val.nation}</p>
                <p className="card-text">Ingredient: {val.ingredient}</p>
                <div className="d-flex">
                  <input
                    className="form-control"
                    style={{ width: "300px" }}
                    type="number"
                    placeholder="Newprice"
                    onChange={(event) => {
                      setNewPrice(event.target.value)
                    }}
                  />
                  <button className="btn btn-warning" onClick={() => {updatePrice(val.id)}}>Update</button>

                  <button className="btn btn-danger" onClick={() => {deleteMenu(val.id)}}>Delete</button>
                </div>
              </div>
            </div>
          );
        })}
      </div>
    </div>
  );
}

export default App;
