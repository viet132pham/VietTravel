import React from "react";
import "../styles/ListHotel.scss";
import Pagination from "../../../../commons/Pagination";
import { useEffect } from "react";
import { useDispatch, useSelector } from "react-redux";
import { getListHotel } from "../actions/ListHotelActionCallApi";
import { useHistory } from "react-router-dom";

function ListHotel(props) {

  const dispatch = useDispatch();

  const history = useHistory();

  const items = useSelector(state => state.hotel.items);

  console.log("check items :", items);

  useEffect(() => {
    dispatch(getListHotel());
  }, []);

  const handleShowDetail = (id) => {
    history.push(`/hotel/detail/${id}`);
  }

  return (
    <div className="list-hotel-wrapper">
      <div className="title">
        <div className="text">Hotel: {items?.length || 0} results found</div>
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
            <div className="hotel-item" onClick={() =>handleShowDetail(e.id)}>
              <div className="image">
                {/* <img src={e.image}></img> */}
                <div className="location d-flex">
                  <div className="icon">
                  <i className="fa-solid fa-location-dot fa-xl"></i>
                  </div>
                  <div className="text">{e?.description}</div>
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
                From $<b>{e?.price}</b>{" "}
              </div>
            </div>
          );
        })}
      </div>
      <Pagination />
    </div>
  );
}
export default ListHotel;

