import React from "react";
import "../styles/FilterData/FilterData.scss"
import FilterLocation from "./FilterLocation";
import FilterPrice from "./FilterPrice";
import FilterTime from "./FilterTime";
import FilterSale from "./FilterSale";

function FilterData (props){
  return (
    <div className="filter-wrapper">
      <FilterLocation />
      <FilterPrice />
      <FilterTime />
      <FilterSale />
    </div>
  )
}
export default FilterData;