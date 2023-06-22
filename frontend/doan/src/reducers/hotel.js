import * as actionTypeHotel from "../components/Pages/components/Hotels/actions/ListHotelActionType";

const initState = {
  items: [],
  trendingItems: []
};

const hotel = (state = initState, action) => {
  switch (action.type) {
    case actionTypeHotel.UPDATE_LIST_HOTEL:
      return {
        ...state,
        items: action.data,
      };
    case actionTypeHotel.UPDATE_LIST_HOTEL_TRENDING:
      return {
        ...state,
        trendingItems: action.data,
      };
    default:
      return state;
  }
};

export default hotel;
