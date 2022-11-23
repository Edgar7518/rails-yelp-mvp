class Review < ApplicationRecord
    belongs_to :restaurant
    validates :content, :rating, presence: true    
    validates :content, length: { minimum: 5 }
    validates :rating, inclusion: { in: (0..5), allow_nil: false }, numericality: { only_integer: true }
end
