class Photo < ActiveRecord::Base
  attr_accessible :title, :url
  has_and_belongs_to_many :albums

  mount_uploader :url, ImageUploader
end
