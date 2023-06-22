import React from "react";
import "../styles/ListVehicle.scss";
import Pagination from "../../../../commons/Pagination";
import { useDispatch, useSelector } from "react-redux";
import { useEffect } from "react";
import { getListVehicle } from "../actions/ListVehicleActionCallApi";

function ListVehicle(props) {

  const items = useSelector(state => state.vehicle.items);

  const dispatch = useDispatch();

  useEffect(() => {
    dispatch(getListVehicle());
  }, []);

  return (
    <div className="list-vehicle-wrapper">
      <div className="title">
        <div className="text">Vehicle: {items?.length || 0} results found</div>
        <div className="filter-icons"></div>
      </div>
      <div className="nav-link-filter">
        <div className="nav-item">popularity</div>
        <div className="nav-item">guest rating</div>
        <div className="nav-item">latest</div>
        <div className="nav-item">Price: low to hight</div>
        <div className="nav-item">Price: hight to low</div>
      </div>
      <div className="list-items">
        {items?.map((e) => {
          return (
            <div className="vehicle-item">
              <div className="image">
                <img src={e.image}></img>
                <div className="location d-flex">
                  <div className="icon">
                  <i className="fa-solid fa-location-dot fa-xl"></i>
                  </div>
                  <div className="text">{e?.location?.description}</div>
                </div>
              </div>
              <div className="rate">
              <i className="fa-solid fa-star"></i>
              </div>
              <div className="point-rate d-flex">
                <div className="point">4.0/5.0</div>
                <div className="view">( 1 review )</div>
              </div>
              <div className="price">
                {" "}
                From $ <b>{e.price}</b>{" "}
              </div>
            </div>
          );
        })}
      </div>
      <Pagination />
    </div>
  );
}
export default ListVehicle;
