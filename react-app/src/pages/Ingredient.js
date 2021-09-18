import React, { useEffect, useState } from 'react'
import Header from '../component/Header';
import axios from 'axios';
import { useRandom } from '../use'
import { Link } from 'react-router-dom'
import { useDispatch } from 'react-redux';
import { fetchIngredient } from '../actions/ingredientAction';


export default function Ingredient() {
    const [ingredient,setIngredient] = useState([]);
    const [random] = useRandom(6);
    const dispatch = useDispatch();
    
    useEffect(() => {
        const getIngredient = async () => {
            try {
                const str = random.join(',');
                const res = await axios.get(`http://localhost:5050/api/randomIngredient?randomIngredient=${str}`);
                
                setIngredient(res.data);
            } catch (error) {
                console.log(error.response);
            }
        }

        getIngredient();
    }, [random]);

    const fetch_ingredient = (id) => {
        dispatch(fetchIngredient({ id }));
    }

    const getNewData = (e) => {
        e.preventDefault();
        document.location.reload();
    }
    return (
        <>
            <Header />
            <main>
                <div>
                <span>Ingredient</span>
                </div>
                <div>
                    { ingredient.map((value) => {
                        return (
                            <button type="button" onClick={() => { fetch_ingredient(value.Ingredient_name) }}>
                                <div key={value.In_id}>
                                    <span>{value.Ingredient_name}</span>
                                </div>
                            </button>
                        )
                    }) }
                </div>
                <div>
                <Link to="/" onClick={getNewData}>Try again</Link>
                <Link to="/MenuFood">Next!</Link>
                </div>
            </main>
            </>
    )
}
