import React from "react";
import HeaderNav from "../../../../commons/HeaderNav/HeaderNav";
import "../styles/Detail.scss";
import { useHistory } from "react-router-dom";
import { useEffect } from "react";
import { useDispatch, useSelector } from "react-redux";
import { useState } from "react";
import Footer from "../../../../HomePage/Footer";
import {
  handleEverageStar,
} from "../../../../commons/actions/actionCommons";
import { Button } from "@mui/material";
import { getTourDetailItem } from "../actions/ListTourActionCallApi";
import { addCartItem } from "../../Cart/actions/CartActionCallApi";

function ItemTourDetail(props) {
  const [item, setItem] = useState({});
  const history = useHistory();
  const cartId = useSelector((state) => state.cart?.id);
  const dispatch = useDispatch();

  useEffect(() => {
    const path = history.location.pathname;
    const id = path?.split("/tour/detail/")?.[1];
    dispatch(getTourDetailItem(id)).then((res) => {
      setItem(res);
    });
  }, []);

  const handleAddCartItem = (e) => {
    console.log(cartId);
    const cartModel = {
      cartId: cartId,
      categoryName: "tour",
      categoryId: e?.id,
      name: e?.name,
      price: Number(e?.price),
      quantity: 1,
    };
    dispatch(addCartItem(cartModel));
  };
  return (
    <div className="hotel-detail-wrapper">
      <HeaderNav />
      <hr />
      <div className="hotel-detail-content-wrapper">
        <div className="bread-scrum d-flex">
          <div className="text" onClick={() => history.push("/")}>
          Trang chủ >{" "}
          </div>
          <div className="text" onClick={() => history.push("/tour")}>
            Tour
          </div>
          <div className="text">> Chi tiết </div>
        </div>
        <hr />
        <div className="container">
          <div className="row">
            <div className="col-lg-10 col-xl-9">
              <div className="product">
                <div className="d-block d-md-flex flex-center-between align-items-start mb-2">
                  <div className="w-100 d-flex justify-content-between">
                    <div className="mb-3">
                      <div className="d-block d-md-flex flex-horizontal-center mb-2 mb-md-0">
                        <h4 className="font-size-23 font-weight-bold mb-1">
                          {item?.name}
                        </h4>
                        <div className="ml-3 font-size-10 letter-spacing-2 d-flex align-items-center">
                          {handleEverageStar(item?.reviews || [])?.map((item) => {
                            return (
                              <i
                                className="fa-solid fa-star"
                                style={{ color: "#b0d12b", marginRight: "3px" }}
                              ></i>
                            );
                          })}
                        </div>
                      </div>
                      <div className="d-block d-md-flex flex-horizontal-center font-size-14 text-gray-1 sub-description">
                        <i className="fa-solid fa-location-dot mr-2 font-size-20"></i>
                        <div>{item?.description}</div>
                      </div>
                    </div>
                    <div>
                      <Button variant="container" onClick={() => handleAddCartItem(item)}>Thêm vào giỏ hàng</Button>
                    </div>
                  </div>
                </div>
                <div className="pb-4 mb-2">
                  <img src={item?.image}></img>
                </div>
                <div className="single-hotel__description border-bottom">
                  <h5 className="text-dark font-weight-bold description-title">
                  Mô tả
                  </h5>
                  <div className="description">
                    {item?.location?.description}
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <Footer />
    </div>
  );
}
export default ItemTourDetail;
