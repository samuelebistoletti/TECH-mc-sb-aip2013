class Event < ActiveRecord::Base
attr_accessible :date, :description, :name, :location, :extra_notes, :image_url
end
