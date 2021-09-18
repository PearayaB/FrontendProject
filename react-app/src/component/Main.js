import React, { useEffect, useState }  from 'react';
import axios from 'axios';
import { Link } from 'react-router-dom';
import './style.css';
import 'bootstrap/dist/css/bootstrap.css';

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
            <div className="container">
                <div className="row justify-content-start align-items-center">
                    <div className="top">
                        <h1>TOP 5</h1>
                    </div>
                )
            }) }
            <Link to="/nation">FOOD</Link>
            <Link to="/Drink">DRINK</Link>
            <button>CREATE</button>
        </main>
    )
}
