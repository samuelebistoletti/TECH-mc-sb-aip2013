class Service < ActiveRecord::Base
  attr_accessible :description, :image_url, :name, :procedure, :type
end
