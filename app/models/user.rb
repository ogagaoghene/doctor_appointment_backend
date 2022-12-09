# frozen_string_literal: true

class User < ApplicationRecord
  has_secure_password

  has_many :appoinments

  validates :name, presence: true, length: { minimum: 3, maximum: 50 }
  validates :email, uniqueness: true, presence: true

end
