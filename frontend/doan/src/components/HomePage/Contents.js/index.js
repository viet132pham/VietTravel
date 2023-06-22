import React from "react";
import TopDestination from "./TopDestination";
import "../styles/ContentWrapperStyle.scss";
import Trending from "./Trending";
import TodayTopDeals from "./TodayTopDeals";
import TravelTip from "./TraverTip";
import WhyChoose from "./WhyChoose";
import { useDispatch } from "react-redux";
import { useEffect } from "react";
import { getDestinationItems } from "../actions/actionCallApi";

function Contents(props){

  const dispatch = useDispatch();

  useEffect(() => {
    dispatch(getDestinationItems())
  }, []);

  return (
    <div className="content-wrapper">
      <TopDestination />
      <div className="mt-5 mb-5">
        <hr/>
      </div>
      <Trending />
      <TravelTip />
      <WhyChoose />
      <div className="mt-4 mb-4">
        <hr/>
      </div>
      <TodayTopDeals />
    </div>
  )
}
export default Contents;