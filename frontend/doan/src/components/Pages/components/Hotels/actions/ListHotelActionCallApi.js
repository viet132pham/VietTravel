import { BASE_URL } from "../../../../../contains/config"
import callApi from "../../../../../ulti/callApi";
import { updateListHotel, updateListHotelTrending } from "./ListHotelActionRedux";

export const getListHotel = () => dispatch => {
  const options = {
    method: 'GET'
  }

  const url = `${BASE_URL}/api/hotel/list`;
  
  return callApi(url, options).then(res => {
    if(res?.data){
      console.log("check res hotel:", res.data);
      dispatch(updateListHotel(res.data));
    }
  });
}

export const getHotelTrendingItems = () => dispatch => {
  const options = {
    method: 'GET'
  }

  const url =  `${BASE_URL}/api/hotel/find/trending`;

  return callApi(url, options).then(res => {
    if(res?.data){
      console.log("check res hotel trending:", res.data);
      dispatch(updateListHotelTrending(res.data));
    }
  });
};

export const getHotelDetailItem = (id) => dispatch => {
  const options = {
    method: 'GET'
  }

  const url =  `${BASE_URL}/api/hotel/${id}`;

  return callApi(url, options).then(res => {
    if(res?.data){
      console.log("check res hotel detail:", res.data);
      return res.data;
    }
  });
}