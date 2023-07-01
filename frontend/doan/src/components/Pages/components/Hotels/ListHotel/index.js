import React from "react";
import "../styles/ListHotel.scss";
import Pagination from "../../../../commons/Pagination";
import { useEffect } from "react";
import { useDispatch, useSelector } from "react-redux";
import {
  getListHotel,
  getListFilterHotel,
} from "../actions/ListHotelActionCallApi";
import { useHistory } from "react-router-dom";
import {
  everageStar,
  handleEverageStar,
} from "../../../../commons/actions/actionCommons";
import { Button } from "@mui/material";
import { addCartItem } from "../../Cart/actions/CartActionCallApi";
import { useLocation } from 'react-router-dom';

function ListHotel(props) {
  const location = useLocation();
  const name = location.state?.name;
  const dispatch = useDispatch();

  const history = useHistory();

  const cartId = useSelector((state) => state.cart?.id);

  const items = useSelector((state) => state.hotel.items);

  const filter = useSelector((state) => state.hotel.filter);

  useEffect(() => {
    console.log(name);
    if(name) {
      dispatch({
        type: "CHANGE_FILTER_HOTEL",
        key: "name",
        data: name,
      });
      dispatch(getListFilterHotel());
    } else {
      dispatch(getListHotel(filter));
    }
  }, []);

  useEffect(() => {
      dispatch(getListFilterHotel());
  }, [filter?.limit, filter?.name, 
    filter?.priceStart, 
    filter?.priceEnd, filter?.checkIn,
     filter?.checkOut, filter?.page, filter?.sortBy, filter?.sale]);

  const handleShowDetail = (id) => {
    history.push(`/hotel/detail/${id}`);
  };

  const handleChangeSortType = (value) => {
    console.log("cghecklsklasdas");
    dispatch({
      type: "CHANGE_FILTER_HOTEL",
      key: "sortBy",
      data: value,
    });
  };

  const handleAddCartItem = (e) => {
    const cartModel = {
      cartId: cartId,
      categoryName: "hotel",
      categoryId: e?.id,
      name: e?.name,
      price: Number(e?.price),
      quantity: 1,
    };
    dispatch(addCartItem(cartModel));
  };

  const handleClearFilter = () => {
    dispatch({
      type: "RESET_FILTER_HOTEL"
    });
    dispatch(getListHotel(filter));
  }

  return (
    <div className="list-hotel-wrapper">
      <div className="title">
        <div className="text">Hotel: {items?.length || 0} kết quả tìm thấy</div>
        <div className="filter-reset" onClick={() => handleClearFilter()}>Xóa bộ lọc</div>
      </div>
      <div className="nav-link-filter">
        <div
          className="nav-item"
          onClick={() => handleChangeSortType("sale")}
        >
          Giảm giá
        </div>
        <div
          className="nav-item"
          onClick={() => handleChangeSortType("newest")}
        >
          Mới nhất
        </div>
        <div
          className="nav-item"
          onClick={() => handleChangeSortType("latest")}
        >
          Cũ nhất
        </div>
        <div
          className="nav-item"
          onClick={() => handleChangeSortType("low to hight")}
        >
          Giá: thấp đến cao
        </div>
        <div
          className="nav-item"
          onClick={() => handleChangeSortType("hight to low")}
        >
          Giá: cao đến thấp
        </div>
      </div>
      <div className="list-items">
        {items?.map((e) => {
          return (
            <div className="hotel-item">
              <div className="image" onClick={() => handleShowDetail(e.id)}>
                <img src={e.image}></img>
                <div className="location d-flex">
                  <div className="icon">
                    <i className="fa-solid fa-location-dot fa-xl"></i>
                  </div>
                  <div className="text">{e?.name}</div>
                </div>
              </div>
              <Button onClick={() => handleAddCartItem(e)}>Thêm vào giỏ hàng</Button>
              <div className="rate">
                {handleEverageStar(e?.reviewsDTOS)?.map((item) => {
                  return (
                    <i
                      className="fa-solid fa-star"
                      style={{ color: "#b0d12b", marginRight: "3px" }}
                    ></i>
                  );
                })}
              </div>
              <div className="point-rate d-flex">
                <div className="point">{everageStar(e?.reviewsDTOS)}.0/5.0</div>
                <div className="view">( {e?.reviews?.length || 0} đánh giá )</div>
              </div>
              <div className="price">
                Từ VND <b>{e?.price}</b>{" "}
              </div>
            </div>
          );
        })}
      </div>
      <Pagination filter={filter} type="hotel"/>
    </div>
  );
}
export default ListHotel;
