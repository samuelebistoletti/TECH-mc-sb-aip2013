class Contact < ActiveRecord::Base
  attr_accessible :email, :message, :name, :surname

  validates_presence_of :name
  validates_presence_of :surname
  validates_presence_of :email
  validates_presence_of :message
end
