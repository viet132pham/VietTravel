
import * as actionTypeVehicle from "../components/Pages/components/Vehicles/actions/ListVehicleActionType";

const initState = {
  items: [],
  trendingItems: []
};

const vehicle = (state = initState, action) => {
  switch (action.type) {
    case actionTypeVehicle.UPDATE_LIST_VEHICLE:
      return {
        ...state,
        items: action.data,
      };
    case actionTypeVehicle.UPDATE_LIST_VEHICLE_TRENDING:
      return {
        ...state,
        trendingItems: action.data,
      };
    default:
      return state;
  }
};

export default vehicle;
