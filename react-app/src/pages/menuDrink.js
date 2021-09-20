import React, { useEffect, useState } from 'react'
import Header from '../component/Header';
import axios from 'axios';
// import { useRandom } from '../use'
import { Link, useHistory } from 'react-router-dom';
import { useSelector } from 'react-redux';
import { fetchSave } from '../actions/saveAction';
import { useDispatch } from "react-redux";
import { fetchMenuDrink } from '../actions/menuDrinkAction';

export default function MenuDrink() {
    const menuDrink = useSelector((state) => state.menu_drink);
    const ingredient = useSelector((state) => state.ingredient);
    
    const history = useHistory();
    const dispatch = useDispatch();
    
    useEffect(() => {
        const getDrink = async () => {
            try {
                const res = await axios.get(`http://localhost:5050/api/menuDrink?ing=${ingredient.id}`);
                console.log(res);

                dispatch(fetchMenuDrink(res.data));
            } catch (error) {
                console.log(error.response);
            }
        }


        getDrink();
    }, [dispatch, ingredient.id]);

    const getDrink = (name_menu) => {
        dispatch(fetchSave({ name_menu }));
        history.push('/ListDrink');
    }

    return (
        <>
            <Header />
            <main>
                
                <div>
                    <span>Drink</span>
                    <span>{ ingredient.id }</span>
                </div>
                <div>
                <span>Menu</span>
                </div>
                <div>
                    { menuDrink.map((value, index) => {
                        return (
                            <>
                            <img src={value.image_menu} alt="" />
                            <button  type="button" onClick={() => { getDrink(value.name_menu) }}>
                                <div>
                                    <span>{value.name_menu}</span>
                                    
                                </div>
                            </button>
                            </>
                        )
                    }) }
                </div>
                <div>
                {/* <Link to="/" onClick={getNewData}>Try again</Link> */}
                <Link to="/ListDrink">Next!</Link>
                </div>
            </main>
        </>
    )
}

