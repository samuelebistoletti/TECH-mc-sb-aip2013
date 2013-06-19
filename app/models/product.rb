class Product < ActiveRecord::Base
  attr_accessible :name, :description, :image_url, :specifications, :designer
end
