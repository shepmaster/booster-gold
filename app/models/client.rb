class Client < ApplicationRecord
  has_many :jobs

  validates :email, presence: true, uniqueness: true
  validates :phone, presence: true
end
