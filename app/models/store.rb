class Store < ApplicationRecord
    enum status: [:created, :active, :inactive]

    validates :name, presence: true
    validates :address, presence: true
    validates :hours, presence: true
    validate :hours_is_array
    validates :coordinate, presence: true

    def hours_is_array
        if !hours.kind_of?(Array)
            errors.add(:hours, "must be an array")
        end
    end

    has_many_attached :photos
end

