class Reseller < ActiveRecord::Base
  attr_accessible :address, :email, :name, :province, :region, :telephone, :image_url
end
