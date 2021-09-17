import React, { useState, useEffect } from 'react';

const useRandom = () => {
    const [randomArr, setRandomArr] = useState([]);
    
    useEffect(() => {
        let arr = [];
        while(true) {
            let random = Math.floor((Math.random() * 6) + 1);
            if (arr.length === 0) {
                arr.push(random);
            } else {
                if (arr.length < 3) {
                    let check = 0;
                    for (let i = 0; i < arr.length; i++) {
                        if (arr[i] === random) {
                            check += 1;
                        }
                    }

                    if (check === 0) {
                        arr.push(random);
                    }
                } else {
                    break;
                }
            }
        }

        setRandomArr(arr);
    }, []);

    return [randomArr];
}

export { useRandom };