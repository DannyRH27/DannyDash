class StoreFilter < ApplicationRecord
    belongs_to :filter,
        foreign_key: :filter_id,
        class_name: :Filter
end
