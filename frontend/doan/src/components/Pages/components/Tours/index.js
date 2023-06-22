import React from "react";  
import { withRouter } from "react-router-dom";
import HeaderNav from "../../../commons/HeaderNav/HeaderNav";
import ListTour from "./ListTour";
import "./styles/index.scss";
import FilterData from "../../../commons/FilterData";

function Tours (props){
  return (
    <div className="tours-wrapper">
      <HeaderNav />
      <hr />
      <div className="tour-content-wrapper">
        <FilterData />
        <ListTour />
      </div>
    </div>
  )
}
export default withRouter(Tours);