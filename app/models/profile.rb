class Profile < ApplicationRecord
  belongs_to :user
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :street, presence: true
  validates :address, presence: true
  validates :state, presence: true
  validates :address, presence: true
  validates :postcode, presence: true

  mount_uploader :picture, ProfilePicUploader

end
