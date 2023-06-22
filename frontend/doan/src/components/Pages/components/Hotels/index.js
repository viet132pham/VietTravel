import React from "react";  
import { withRouter } from "react-router-dom";
import HeaderNav from "../../../commons/HeaderNav/HeaderNav";
import ListHotel from "./ListHotel";
import "./styles/index.scss";
import FilterData from "../../../commons/FilterData";

function Hotels (props){
  return (
    <div className="hotels-wrapper">
      <HeaderNav />
      <hr />
      <div className="hotel-content-wrapper">
        <FilterData />
        <ListHotel />
      </div>
    </div>
  )
}
export default withRouter(Hotels);