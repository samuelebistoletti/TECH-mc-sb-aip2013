class Event < ActiveRecord::Base
  attr_accessible :date, :description, :name, :location, :extra_notes, :image_url
  has_and_belongs_to_many :partners, association_foreign_key: 'partner_id'
end
