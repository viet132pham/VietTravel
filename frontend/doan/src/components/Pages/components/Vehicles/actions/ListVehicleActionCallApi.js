import { BASE_URL } from "../../../../../contains/config"
import callApi from "../../../../../ulti/callApi";
import { updateListVehicle, updateListVehicleTrending } from "./ListVehicleActionRedux";

export const getListVehicle = () => dispatch => {
  const options = {
    method: 'GET'
  }

  const url = `${BASE_URL}/api/vehicle/list`;
  
  return callApi(url, options).then(res => {
    if(res?.data){
      console.log("check res tour:", res.data);
      dispatch(updateListVehicle(res.data));
    }
  });

};

export const getVehicleTrendingItems = () => dispatch => {
  const options = {
    method: 'GET'
  }

  const url =  `${BASE_URL}/api/vehicle/find/trending`;

  return callApi(url, options).then(res => {
    if(res?.data){
      console.log("check res hotel trending:", res.data);
      dispatch(updateListVehicleTrending(res.data));
    }
  });
} 