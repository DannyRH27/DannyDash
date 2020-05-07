@stores.each do |store|
    json.set! store.id do
        json.extract! store, :id, :name, :address, :hours, :description
        json.photoUrls store.photos.map {|file| url_for(file)}
        json.filters store.filters.map {|filter| filter.filter_title}
        json.menus store.menus.map {|menu| menu.title}
    end
    
end