import React, { useEffect, useState } from 'react'
import Header from '../component/Header';
import axios from 'axios';
import { useRandom } from '../use'
import { Link } from 'react-router-dom';
import { useSelector } from 'react-redux';
import { fetchMenu} from "../actions/menuFoodAction";
// import { useDispatch } from "react-redux";

export default function MenuFood() {
    const ingredient = useSelector((state) => state.ingredient);
    const nation = useSelector((state) => state.nation);
    const [Food, setFood] = useState([]);
    const [random] = useRandom(6);
    
    useEffect(() => {
        const getFood = async () => {
            try {
                const str = random.join(',');
                const res = await axios.get(`http://localhost:5050/api/randomFood?randomFood=${str}`);
                
                setFood(res.data);
            } catch (error) {
                console.log(error.response);
            }
        }

        getFood();
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
                    {/* { Food.map((value) => {
                        return (
                            <button type="button" onClick={() => { fetchMenu(value.name_menu) }}>
                                <div key={value.id}>
                                    <span>{value.name_menu}</span>
                                </div>
                            </button>
                        )
                    }) }
                </div>
                <div> */}
                <Link to="/" onClick={getNewData}>Try again</Link>
                <Link to="/listFood">Next!</Link>
                </div>
            </main>
        </>
    )
}

