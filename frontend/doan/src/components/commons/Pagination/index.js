import * as React from "react";
import Pagination from "@mui/material/Pagination";
import "../styles/PaginationCommon.scss";

function PaginationCommon(props) {
  const { total, page, limit } = props;

  return (
    <div className="pagination-wrapper">
      <div className="show-total">Total result: {100}</div>
      <div className="show-page">
        <Pagination count={10} variant="outlined" shape="rounded" onChange={(value, page) => {console.log("check e :", page);}} />
      </div>
    </div>
  );
}
export default PaginationCommon;
