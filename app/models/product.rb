class Product < ActiveRecord::Base
  attr_accessible :description, :designer, :image_url, :name, :specifications
end
