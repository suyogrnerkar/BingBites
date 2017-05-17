class Item < ActiveRecord::Base
  has_many :eatery_items
  has_many :eateries, through: :eatery_items
end
