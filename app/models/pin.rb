class Pin < ActiveRecord::Base
  belongs_to :user

  validates :photo, presence: true

  mount_uploader :photo, PhotoUploader

end
