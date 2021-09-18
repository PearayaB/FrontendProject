import React, { useEffect, useState } from "react";
import Header from "../component/Header";
import axios from "axios";
import { useRandom } from "../use";
import { Link } from "react-router-dom";
import { fetchNation } from "../actions/nationAction";
import { useDispatch } from "react-redux";

export default function Nation() {
  const [nation, setNation] = useState([]);
  const dispatch = useDispatch();
  const [random] = useRandom(6);

  useEffect(() => {
    const getNation = async () => {
      try {
        const str = random.join(",");
        const res = await axios.get(
          `http://localhost:5050/api/randomNation?randomNation=${str}`
        );

        setNation(res.data);
      } catch (error) {
        console.log(error.response);
      }
    };

    getNation();
  }, [random]);

  const getNewData = (e) => {
    e.preventDefault();
    document.location.reload();
  };
  const fetch_nation = (id) => {
    dispatch(fetchNation({ id }));
  };

  return (
    <>
      <Header />
      <main>
        <div>
          <span>Nationality</span>
        </div>
        <div>
          {nation.map((value) => {
            return (
              <button
                type="button"
                onClick={() => {
                  fetch_nation(value.nation_name);
                }}
              >
                <div key={value.nt_id}>
                  <span>{value.nation_name}</span>
                </div>
              </button>
            );
          })}
        </div>
        <div>
          <Link to="/" onClick={getNewData}>
            Try again
          </Link>
          <Link to="/Ingredient">Next!</Link>
        </div>
      </main>
    </>
  );
}
