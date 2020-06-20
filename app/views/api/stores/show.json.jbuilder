json.extract! @store, :id, :name, :address, :hours, :description, :coordinate, :rating, :rating_count
json.menus do 
    @store.menus.each do |menu|
        json.set! menu.id do 
            json.extract! menu, :title, :item_ids
        end
    end
end
json.photoUrls @store.photos.map { |file| url_for(file) }
json.filters @store.filters.map {|filter| filter.filter_title}
json.items do
    @store.menu_items.each do |item|
        json.set! item.id do
            json.extract! item, :name, :price, :description
            json.photoUrl url_for(item.photo)
        end
    end
end