import * as actionTypeTour from "../components/Pages/components/Tours/actions/ListTourActionActionType";

const initState = {
  items: [],
  trendingItems: []
};

const tour = (state = initState, action) => {
  switch (action.type) {
    case actionTypeTour.UPDATE_LIST_TOUR:
      return {
        ...state,
        items: action.data,
      };
    case actionTypeTour.UPDATE_LIST_TOUR_TRENDING:
      return {
        ...state,
        trendingItems: action.data,
      }
    default:
      return state;
  }
};

export default tour;
