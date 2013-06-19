class Service < ActiveRecord::Base
  attr_accessible :description, :image_url, :name, :procedure, :type
  has_and_belongs_to_many :products, association_foreign_key: 'product_id'
end
