import React from "react";
import "../styles/TopDealsStyle.scss";

function TodayTopDeals(props) {


  return (
    <div className="top-deals">
      <div className="top-deals-wrapper">
        <div className="title d-flex justify-content-center">
          Today's Top Deals
        </div>
        <div className="divide-1"></div>
        <div className="list-deal">
          {dataDestinationFake?.map(e => {
            return (
              <div className="banner-wrapper">
              <div className="banner-image">
                <img
                  src={e.image}
                  alt="banner"
                  onError={(e) => {
                    e.target.onerror = null;
                  }}
                />
              </div>
            </div>
            )
          })}
        </div>
      </div>
    </div>
  );
}
export default TodayTopDeals;

const dataDestinationFake = [
  {
    image: "https://mytour.webtravel.vn/images/desti1.jpeg",
    title: "United Kingdom",
    content: ["30 Hotel", "48 Tours", "46 Activity", "50 Yacht"],
  },
  {
    image: "https://mytour.webtravel.vn/images/desti1.jpeg",
    location: "United Kingdom",
    services: ["30 Hotel", "48 Tours", "46 Activity", "50 Yacht"],
  },
  {
    image: "https://mytour.webtravel.vn/images/desti1.jpeg",
    location: "United Kingdom",
    services: ["30 Hotel", "48 Tours", "46 Activity", "50 Yacht"],
  },
];
