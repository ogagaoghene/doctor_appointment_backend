class User < ApplicationRecord
  has_secure_password
  has_many :appointments, dependent: :destroy
  validates :name, presence: true, length: { minimum: 3, maximum: 50 }
  validates :email, presence: true
end
