@filters.each do |filter|
    json.set! filter.id do
        json.extract! filter, :id, :filter_title
        json.photoUrl url_for(filter.photo)
    end
end