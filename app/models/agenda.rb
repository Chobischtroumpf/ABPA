class Agenda < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  belongs_to :user

  validates :user_id, presence: true
  validates :description, presence: true
end
