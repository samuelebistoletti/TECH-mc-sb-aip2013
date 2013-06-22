class Partner < ActiveRecord::Base
  attr_accessible :description, :external_link, :image_url, :name
  has_many :products, :foreign_key => :partner_id
end
