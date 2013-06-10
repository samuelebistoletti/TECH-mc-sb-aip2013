class Product < ActiveRecord::Base
  attr_accessible :category, :description, :title, :image
end
