class Practicien < ApplicationRecord
  validates :nom, presence: true, uniqueness: true
  validates :localisation, presence: true
  validates :education, presence: true
  validates :user_id, presence: true
end
