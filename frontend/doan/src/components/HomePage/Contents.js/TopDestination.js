import React from "react";
import "../styles/TopDestinationStyle.scss";
import { useSelector } from "react-redux";

function TopDestination(props) {

  const items = useSelector(state => state.global.destinationItems);

  return (
    <div className="top-destination">
      <div className="destination-wrapper">
        <div className="title d-flex justify-content-center">Top Destination</div>
        <div className="divide-1"></div>
        <div className="list-destination">
          {items?.map((e, index) => {
            return (
              <div className={`destination-item item-${index}`} style={{backgroundImage: `url(https://mytour.webtravel.vn/images/desti1.jpeg)`}}>
                <div className="location">{e?.locationName}</div>
                <div className="divide"></div>
                <div className="services">
                  <div className="hotel">
                    {e?.totalHotel} Hotels
                  </div>
                  <div className="tour">
                    {e?.totalTour} Tour
                  </div>
                  <div className="vehicle">
                    {e?.totalVehicle} Vehicle
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
export default TopDestination;

