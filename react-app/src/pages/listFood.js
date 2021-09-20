import React, { useEffect, useState } from 'react'
import Header from '../component/Header';
import { Link, useHistory } from 'react-router-dom';
import { useSelector, useDispatch } from 'react-redux';
import { deleteSave } from '../actions/saveAction';

export default function ListFood() {
    const save = useSelector((state) => state.save);
    const dispatch = useDispatch();
    const history = useHistory();

    const deleteMenu = () => {
        dispatch(deleteSave());
        history.push('/');
    }
    return (
        <>
            <Header />
            <main>
                <div>
                <span>MENU</span>
                    <span>{ save.name_menu }</span>
                </div> 
                <div>
                <button type="button" onClick={() => { deleteMenu() }}> DELETE </button>
                    </div>              
                <div>
                    <Link to="/Home">Enjoy Eating</Link>
                </div>
            </main>
        </>
    )
}
