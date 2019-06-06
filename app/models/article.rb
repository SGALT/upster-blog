class Article < ApplicationRecord
  belongs_to :user
  has_many :reviews
  mount_uploader :image, PhotoUploader
  acts_as_punchable
end
