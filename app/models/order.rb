class Order < ApplicationRecord

  belongs_to :user,
    foreign_key: :customer_id,
    class_name: :User

end
