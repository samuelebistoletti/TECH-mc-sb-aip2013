class Product < ActiveRecord::Base
  attr_accessible :category, :description, :image, :title
end
