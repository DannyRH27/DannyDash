export const selectStore = ({ stores }, storeId) => {
    // debugger
  return stores[storeId]
};

// export const selectReviewsForStore = ({ stores, reviews }, store) => {
//   return store.reviewIds.map(reviewId => reviews[reviewId]);
// };
// export const asArray = ({ stores }) => (
//   Object.keys(stores).map(key => stores[key])
// );
