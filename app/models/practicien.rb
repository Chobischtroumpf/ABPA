class Practicien < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :user
  # validates :nom, presence: true, uniqueness: true
  # validates :email, presence: true, uniqueness: true
  # validates :localisation, presence: true
  # validates :education, presence: true
  # validates :user_id, presence: true
end
