class Service < ActiveRecord::Base
  attr_accessible :description, :name, :procedure, :type
end
