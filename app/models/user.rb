class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable :registerable
  # :recoverable
  devise :database_authenticatable, :rememberable, :validatable
  has_many :practiciens
  has_many :agendas
end
