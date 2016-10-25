class Pet < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :breed, presence: true
  validates :age, presence: true
  validates :size, presence: true

  mount_uploader :picture, ProfilePicUploader
end
