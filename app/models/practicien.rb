class Practicien < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :user
  validates :nom, presence: true, uniqueness: true
  # validates :nompratique, presence: true
  validates :adressenum, presence: true
  validates :province, presence: true
  validates :telephone, presence: true
  validates :educationpsy, presence: true
  validates :groupeaide, presence: true
  validates :aideindividuelle, presence: true
  validates :email, presence: true
  validates :user_id, presence: true

  include PgSearch
  pg_search_scope :search_by_type_of_practice_and_province,
  against: [:educationpsy, :groupeaide, :aideindividuelle, :province],
  using: {
    tsearch: { prefix: true }
  }
end
