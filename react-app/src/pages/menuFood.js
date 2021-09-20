import React, { useEffect, useState } from 'react'
import Header from '../component/Header';
import axios from 'axios';
// import { useRandom } from '../use'
import { Link, useHistory } from 'react-router-dom';
import { useSelector } from 'react-redux';
import { fetchMenu } from "../actions/menuAction";
import { fetchSave } from '../actions/saveAction';
import { useDispatch } from "react-redux";

export default function MenuFood() {
    const menu = useSelector((state) => state.menu);
    const ingredient = useSelector((state) => state.ingredient);
    const nation = useSelector((state) => state.nation);
    const history = useHistory();
    const dispatch = useDispatch();
    
    useEffect(() => {
        const getFood = async () => {
            try {
                const res = await axios.get(`http://localhost:5050/api/menuFood?nt=${nation.id}&ing=${ingredient.id}`);

                dispatch(fetchMenu(res.data));
            } catch (error) {
                console.log(error.response);
            }
        }


        getFood();
    }, [dispatch, ingredient.id, nation.id]);

    const getFood = (name_menu) => {
        dispatch(fetchSave({ name_menu }));
        history.push('/listFood');
    }

    return (
        <>
            <Header />
            <main>
                <div>
                <span>Nationality</span>
                <span>{ nation.id }</span>
                </div>
                <div>
                    <span>Ingredient</span>
                    <span>{ ingredient.id }</span>
                </div>
                <div>
                <span>Menu</span>
                </div>
                <div>
                    { menu.map((value, index) => {
                        return (
                            <>
                            <img src={value.image_menu} alt="" />
                            <button key={index} type="button" onClick={() => { getFood(value.name_menu) }}>
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
                <Link to="/listFood">Next!</Link>
                </div>
            </main>
        </>
    )
}

