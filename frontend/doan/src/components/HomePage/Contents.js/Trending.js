import React from "react";
import "../styles/TrendingStyle.scss";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { faLocationDot } from "@fortawesome/free-solid-svg-icons";
import { faStar } from "@fortawesome/free-solid-svg-icons";
import { faClockFour } from "@fortawesome/free-solid-svg-icons";
import { useDispatch, useSelector } from "react-redux";
import { getTimeForTrip } from "../../../ulti/dateTime";
import { useEffect } from "react";
import { useState } from "react";
import { getTourTrendingItems } from "../../Pages/components/Tours/actions/ListTourActionCallApi";
import { getHotelTrendingItems } from "../../Pages/components/Hotels/actions/ListHotelActionCallApi";
import { getVehicleTrendingItems } from "../../Pages/components/Vehicles/actions/ListVehicleActionCallApi";
import { useMemo } from "react";

const listTitle = ["Tour", "Hotel", "Vehicle"];

function Trending(props) {

  const [curType, setCurType] = useState('Tour');
  const [items, setItems] = useState([]);

  const trendingHotelItems = useSelector(state => state.hotel.trendingItems);
  const trendingTourItems = useSelector(state => state.tour.trendingItems);
  const trendingVehicleItems = useSelector(state => state.vehicle.trendingItems);

  const dispatch = useDispatch();

  useEffect(() => {
    dispatch(getTourTrendingItems());
    dispatch(getHotelTrendingItems());
    dispatch(getVehicleTrendingItems());
    setItems(trendingTourItems);
  }, []);

  useEffect(() => {
    if(curType === 'Tour'){
      setItems(trendingTourItems);
    }
    else if(curType === 'Hotel'){
      setItems(trendingHotelItems);
    } else {
      setItems(trendingVehicleItems);
    }
  }, [curType]);


  const handleChangeCurType = (type) => {
    setCurType(type);
  }

  console.log("check items aaaaaaaa:", items);

  return (
    <div className="trending-content">
      <div className="trending-wrapper">
        <div className="title d-flex justify-content-center">Trending</div>
        <div className="divide-1"></div>
        <div className="list-title">
          {listTitle?.map((e, index) => {
            return (
              <div className={`item-title ${e === curType ? "active" : ""}`} onClick={() => handleChangeCurType(e)}>
                {e}
              </div>
            );
          })}
        </div>
        <div className="list-trending">
          {items?.map((e, index) => {
            return (
              <div className={`trend-item item-${index}`}>
                <div className="image">
                  <img src={e?.image || ''}></img>
                </div>
                <div className="trend-content-wrapper">
                  <div className="location d-flex">
                    <div className="location-icon">
                      <i className="fa-solid fa-location-dot fa-xl"></i>
                    </div>
                    <div className="text">{e?.location?.description}</div>
                  </div>
                  <div className="tour-name">{e?.name}</div>
                  <div className="rate d-flex">
                    <div className="rate-star">
                      <i className="fa-regular fa-star"></i>
                    </div>
                    <div className="count-view">(1 view)</div>
                  </div>
                  <div className="time d-flex">
                    <div className="icon-time ">
                      <i className="fa-regular fa-clock"></i>
                    </div>
                    <div className="text">{getTimeForTrip(e?.timeStart, e?.timeEnd)}</div>
                  </div>
                </div>
              </div>
            );
          })}
        </div>
      </div>
    </div>
  );
}
export default Trending;
