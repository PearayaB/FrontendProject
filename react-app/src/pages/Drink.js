import React, { useEffect, useState } from 'react'
import Header from '../component/Header';
import axios from 'axios';
import { useRandomDrink } from '../use'
import { Link } from 'react-router-dom';
import { useDispatch } from 'react-redux';
import { fetchIngredient } from '../actions/ingredientAction';

export default function Drink() {
    const [drink, setDrink] = useState([]);
    const [random] = useRandomDrink(6);
    const dispatch = useDispatch();
    
    
    useEffect(() => {
        const getDrink = async () => {
            try {
                const str = random.join(',');
                console.log(str);
                const res = await axios.get(`http://localhost:5050/api/randomDrink?randomDrink=${str}`);
                
                setDrink(res.data);
            } catch (error) {
                console.log(error.response);
            }
        }

        getDrink();
    }, [random]);

    const getNewData = (e) => {
        e.preventDefault();
    }

    const set = (id) => {
        dispatch(fetchIngredient({ id }));
    }
    

    return (
        <>
            <Header />
            <main>
                <div>
                <span>DRINK</span>
                </div>
                <div>
                    { drink.map((value) => {
                        return (
                            <button type="button" onClick={() => { set(value.Ingredient_name) }}>
                                <div key={value.In_id}>
                                    <span>{value.Ingredient_name}</span>
                                </div>
                            </button>
                        )
                    }) }
                </div>
                <div>
                <Link to="/" onClick={getNewData}>Try again</Link>
                <Link to="/menuDrink">Next!</Link>
                </div>
            </main>
        </>
    )
}


