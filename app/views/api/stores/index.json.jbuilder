@stores.each do |store|
    json.set! store.id do
        json.extract! store, :id, :name, :address, :hours, :description, :coordinate, :rating, :rating_count
        json.photoUrls store.photos.map {|file| url_for(file)}
        json.filters store.filters.map {|filter| filter.filter_title}
    end
end