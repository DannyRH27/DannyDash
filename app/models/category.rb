class Category < ApplicationRecord
    validates :category_title, presence: true

end
