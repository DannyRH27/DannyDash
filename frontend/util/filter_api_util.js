export const fetchFilters = () => (
  $.ajax({
    method: "GET",
    url: 'api/filters/',
  })
)