class Service < ActiveRecord::Base
  attr_accessible  :name, :description, :image_url, :procedure, :service_type
end
