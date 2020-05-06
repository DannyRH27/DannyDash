class MenuItem < ApplicationRecord

    belongs_to :menu,
        foreign_key: :menu_id,
        class_name: :Menu

    belongs_to :item,
        foreign_key: :item_id,
        class_name: :Item
end
