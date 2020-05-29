class Filter < ApplicationRecord
    has_many :store_filters,
        foreign_key: :filter_id,
        class_name: :StoreFilter
end