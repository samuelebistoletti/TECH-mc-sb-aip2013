class Designer < ActiveRecord::Base
  attr_accessible :description, :name, :image_url
  has_many :products, :foreign_key => :designer_id
end
