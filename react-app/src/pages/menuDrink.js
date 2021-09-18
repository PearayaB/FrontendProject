import React, { useEffect, useState } from 'react'
import Header from '../component/Header';
import axios from 'axios';
import { useRandom } from '../use'
import { Link } from 'react-router-dom';
import { useSelector } from 'react-redux';
import { fetchDrink} from "../actions/menuDrinkAction";

// import { useDispatch } from "react-redux";

export default function MenuDrink() {
    const ingredient = useSelector((state) => state.ingredient);
    const [Drink, setDrink] = useState([]);
    const [random] = useRandom(6);
    
    useEffect(() => {
        const getDrink = async () => {
            try {
                const str = random.join(',');
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
        document.location.reload();
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
                    {/* { Drink.map((value) => {
                        return (
                            <button type="button" onClick={() => { fetchDrink(value.name_menu) }}>
                                <div key={value.id}>
                                    <span>{value.name_menu}</span>
                                </div>
                            </button>
                        )
                    }) }
                </div>
                <div> */}
                <Link to="/" onClick={getNewData}>Try again</Link>
                <Link to="/listDrink">Next!</Link>
                </div>
            </main>
        </>
    )
}
