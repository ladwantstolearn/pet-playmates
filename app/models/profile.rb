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
 	
  geocoded_by :full_street_address
  after_validation :geocode

  def full_street_address
  	[street, address, state, postcode, country].compact.join(',')
  end


 	extend FriendlyId
  friendly_id :first_name, use: :slugged 

end
