class Filter < ApplicationRecord
  has_many :store_filters,
      foreign_key: :filter_id,
      class_name: :StoreFilter,
      dependent: :destroy
# confused
  has_one_attached :photo
end
