class Album < ActiveRecord::Base
  attr_accessible :title, :photo
  has_and_belongs_to_many :photos
end
