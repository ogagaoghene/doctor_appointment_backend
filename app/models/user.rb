class User < ApplicationRecord
  has_secure_password
  has_many :appointments, dependent: :destroy
  validates :name, presence: true, length: { minimum: 3, maximum: 20 }
  validates :email, presence: true,
                    format: { with: /\A[^@\s]+@([^@.\s]+\.)+[^@.\s]+\z/ }
end
