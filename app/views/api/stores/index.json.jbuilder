@stores.each do |store|
    json.set! store.id do
        json.extract! store, :id, :name, :address, :hours, :description
        json.photoUrl store.photos.map {|file| url_for(file)}
        json.filter store.filters.map {|filter| filter.filter_title}
    end
    
end