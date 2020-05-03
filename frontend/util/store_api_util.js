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

// export const createReview = review => (
//     $.ajax({
//         method: 'POST',
//         url: 'api/reviews',
//         data: { review }
//     })
// );



