json.extract! @store, :id, :name, :address, :hours, :description
json.menus @store.menus.map {|menu| menu.title}
json.photoUrls @store.photos.map { |file| url_for(file) }
json.filters @store.filters.map {|filter| filter.filter_title}