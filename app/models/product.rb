class Product < ActiveRecord::Base
  attr_accessible :name, :description, :image_url, :specifications, :designer_id, :category_id, :partner_id
  has_and_belongs_to_many :services, association_foreign_key: 'service_id'
  has_many :images, :foreign_key => :product_id
  belongs_to :category, :foreign_key => :category_id
  belongs_to :designer, :foreign_key => :designer_id
  belongs_to :partner, :foreign_key => :partner_id
  has_and_belongs_to_many :resellers, association_foreign_key: 'reseller_id'
end
