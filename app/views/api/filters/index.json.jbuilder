@filters.each do |filter|
    json.set! filter.id do
        json.extract! filter, :id, :filter_title, :photoUrl
    end
end