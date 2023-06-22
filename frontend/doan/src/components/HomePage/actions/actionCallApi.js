import { BASE_URL } from "../../../contains/config";
import callApi from "../../../ulti/callApi";
import { updateListDestination } from "./actionRedux";


export const getDestinationItems = () => dispatch => {
  const options = {
    method: 'GET'
  }

  const url =  `${BASE_URL}/api/location/find/topdestination`;

  return callApi(url, options).then(res => {
    if(res?.data){
      console.log("check res destination:", res.data);
      dispatch(updateListDestination(res.data));
    }
  });
} 