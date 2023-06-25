import React from "react";
import "../styles/ListHotel.scss";
import Pagination from "../../../../commons/Pagination";
import { useEffect } from "react";
import { useDispatch, useSelector } from "react-redux";
import { getListHotel, getListFilterHotel } from "../actions/ListHotelActionCallApi";
import { useHistory } from "react-router-dom";
import {
  everageStar,
  handleEverageStar,
} from "../../../../commons/actions/actionCommons";
import { Button } from "@mui/material";
import { addCartItem } from "../../Cart/actions/CartActionCallApi";

function ListHotel(props) {
  const dispatch = useDispatch();

  const history = useHistory();
  
  const cartId = useSelector(state => state.cart?.id);

  const items = useSelector((state) => state.hotel.items);

  const filter = useSelector((state) => state.hotel.filter);

  useEffect(() => {
    dispatch(getListHotel(filter));
  }, []);

  useEffect(() => {
    dispatch(getListFilterHotel());
  }, [filter]);

  const handleShowDetail = (id) => {
    history.push(`/hotel/detail/${id}`);
  };

  const handleAddCartItem = (e) => {
    const cartModel = {
      cartId: cartId,
      categoryName: 'hotel',
      categoryId: e?.id,
      name: e?.name,
      price: Number(e?.price),
      quantity: 1,
    }
    dispatch(addCartItem(cartModel));
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
            <div className="hotel-item" >
              <div className="image" onClick={() => handleShowDetail(e.id)}>
                <img src={e.image}></img>
                <div className="location d-flex">
                  <div className="icon">
                    <i className="fa-solid fa-location-dot fa-xl"></i>
                  </div>
                  <div className="text">{e?.description}</div>
                </div>
                
              </div>
              <Button onClick={() => handleAddCartItem(e)}>Add to Cart</Button>
              <div className="rate">
                {handleEverageStar(e?.reviews)?.map((item) => {
                  return (
                    <i
                      className="fa-solid fa-star"
                      style={{ color: "#b0d12b", marginRight: "3px" }}
                    ></i>
                  );
                })}
              </div>
              <div className="point-rate d-flex">
                <div className="point">{everageStar(e?.reviews)}.0/5.0</div>
                <div className="view">( {e?.reviews?.length || 0} review )</div>
              </div>
              <div className="price">
                From $<b>{e?.price}</b>{" "}
              </div>
            </div>
          );
        })}
      </div>
      <Pagination filter={filter} />
    </div>
  );
}
export default ListHotel;
