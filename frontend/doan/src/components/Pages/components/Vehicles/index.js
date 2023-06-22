import React from "react";  
import { withRouter } from "react-router-dom";
import HeaderNav from "../../../commons/HeaderNav/HeaderNav";
import ListVehicle from "./ListVehicle";
import "./styles/index.scss";
import FilterData from "../../../commons/FilterData";

function Vehicles (props){
  return (
    <div className="hotels-wrapper">
      <HeaderNav />
      <hr />
      <div className="hotel-content-wrapper">
        <FilterData />
        <ListVehicle />
      </div>
    </div>
  )
}
export default withRouter(Vehicles);