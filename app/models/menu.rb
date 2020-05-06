class Menu < ApplicationRecord

    belongs_to :store,
        foreign_key: :store_id,
        class_name: :Store

    has_many :menu_items,
        foreign_key: :menu_id,
        class_name: :MenuItem

    has_many :items,
        through: :menu_items,
        source: :item

        
end
