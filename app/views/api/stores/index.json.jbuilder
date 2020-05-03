json.array! @stores do |store|
    json.extract! store, :id, :name, :address, :hours, :description
    json.photoUrl store.photos.map {|file| url_for(file)}
end