export const fetchStores =() => (
    $.ajax ({
        url: "api/stores",
        method: "GET"
    })
)

export const fetchStore = (storeId) => (
    $.ajax({
        method: "GET",
        url: `/api/stores/${storeId}`
    })
);

export const searchStores = (fragment) =>
  $.ajax({
    method: "GET",
    url: `/api/stores/search/`,
    data: {fragment: fragment}
  });



// export const createReview = review => (
//     $.ajax({
//         method: 'POST',
//         url: 'api/reviews',
//         data: { review }
//     })
// );



