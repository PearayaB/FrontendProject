import React, { useEffect, useState } from 'react'
import Header from '../component/Header';
import axios from 'axios';
import { useRandom } from '../use'
import { Link } from 'react-router-dom'

export default function Nation() {
    const [nation, setNation] = useState([]);
    const [random] = useRandom(6);
    
    useEffect(() => {
        const getNation = async () => {
            try {
                const str = random.join(',');
                const res = await axios.get(`http://localhost:5050/api/randomNation?randomNation=${str}`);
                
                setNation(res.data);
            } catch (error) {
                console.log(error.response);
            }
        }

        getNation();
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
                </div>
                <div>
                    { nation.map((value) => {
                        return (
                            <div key={value.nt_id}>
                                <span>{value.nation_name}</span>
                            </div>
                        )
                    }) }
                </div>
                <div>
                <Link to="/" onClick={getNewData}>Try again</Link>
                <Link to="/Ingredient">Next!</Link>
                </div>
            </main>
        </>
    )
}


