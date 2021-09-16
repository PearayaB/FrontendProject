import React, { useEffect, useState }  from 'react';
import axios from 'axios';

export default function Main() {
    const [top, setTop] = useState([]);

    useEffect(() => {
        const getTopMenu = async () => {
            try {
                const res = await axios.get('http://localhost:5050/api/top_menu');
                setTop(res.data);
            } catch (error) {
                console.log(error.response);
            }
        }

        getTopMenu();
    }, []);

    return (
        <main>
            <span>TOP 5</span>
            { top.map((value) => {
                return (
                    <div key={value.id}>
                        <span>{ value.name_menu }</span>
                    </div>
                )
            }) }
            <button>FOOD</button>
            <button>Drink</button>
            <button>CREATE</button>
        </main>
    )
}
