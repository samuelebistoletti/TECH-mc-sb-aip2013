class Reseller < ActiveRecord::Base
  attr_accessible :address, :email, :name, :province, :region, :telephone, :image_url
  has_and_belongs_to_many :products, association_foreign_key: 'product_id'
end
