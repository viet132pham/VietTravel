

export const updateListDestination = (data) => dispatch => {
  dispatch({
    type: 'UPDATE_DESTINATION_ITEMS',
    data
  })
}