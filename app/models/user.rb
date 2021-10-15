class User < ApplicationRecord
    has_one :shelf
    has_one :cart
    has_many :items, through: :shelf
    has_many :cart_items, through: :cart, source: :items
end
