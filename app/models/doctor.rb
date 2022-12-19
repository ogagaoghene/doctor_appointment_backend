# frozen_string_literal: true

class Doctor < ApplicationRecord
  has_many :appointments, dependent: :destroy
  has_many :users, through: :appointments, dependent: :destroy

  has_one_attached :image
  validates :name, presence: true,
                   length: { in: 3..20, message: 'Name\'s length should be in range of 3 to 50' }
  validates :specialty, presence: true,
                        length: { in: 3..30, message: 'Speciality\'s length should be in range of 3 to 100' }
  validates :email, presence: true,
                    format: { with: /\A[^@\s]+@([^@.\s]+\.)+[^@.\s]+\z/ }
  validates :location, :picture, :years_of_experience, :phonenumber, presence: true
  validates :phonenumber, presence: true,
                          numericality: true,
                          length: { minimum: 10, maximum: 15 }
end
