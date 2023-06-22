import { BASE_URL } from "../../../../../contains/config"
import callApi from "../../../../../ulti/callApi";
import { updateListTour, updateListTourTrending } from "./ListTourActionRedux";

export const getListTour = () => dispatch => {
  const options = {
    method: 'GET'
  }

  const url = `${BASE_URL}/api/tour/list`;
  
  return callApi(url, options).then(res => {
    if(res?.data){
      console.log("check res tour:", res.data);
      dispatch(updateListTour(res.data));
    }
  });

}

export const getTourTrendingItems = () => dispatch => {
  const options = {
    method: 'GET'
  }

  const url =  `${BASE_URL}/api/tour/find/trending`;

  return callApi(url, options).then(res => {
    if(res?.data){
      console.log("check res hotel trending:", res.data);
      dispatch(updateListTourTrending(res.data));
    }
  });
} 