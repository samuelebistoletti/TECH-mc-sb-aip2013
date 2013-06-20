class Category < ActiveRecord::Base
  attr_accessible :name, :image_url
  has_many :products, :foreign_key => :category_id
end
