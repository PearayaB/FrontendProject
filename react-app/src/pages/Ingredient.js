import React, { useEffect, useState } from 'react'
import Header from '../component/Header';
import axios from 'axios';
import { useRandom } from '../use'
import { Link } from 'react-router-dom'


export default function Ingredient() {
    const [ingredient,setIngredient] = useState([]);
    const [random] = useRandom(6);
    
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
                            <div key={value.In_id}>
                                <span>{value.Ingredient_name}</span>
                            </div>
                        )
                    }) }
                </div>
                <div>
                <Link to="/" onClick={getNewData}>Try again</Link>
                <Link to="/Menu">Next!</Link>
                </div>
            </main>
            </>
    )
}
