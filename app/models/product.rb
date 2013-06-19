class Product < ActiveRecord::Base
  attr_accessible :name, :description, :image_url, :specifications, :designer, :category
  has_and_belongs_to_many :services, association_foreign_key: 'service_id'
  belongs_to :customer, foreign_key: 'designer'
end
