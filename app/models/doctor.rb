# frozen_string_literal: true

class Doctor < ApplicationRecord
  has_many :appointments, dependent: :destroy
  has_many :users, through: :appointments, dependent: :destroy


  has_one_attached :image
  validates :name, presence: true, length: { in: 3..50, message: 'Name\'s length should be in range of 3 to 50' }
  validates :specialty, presence: true,
                        length: { in: 3..100, message: 'Speciality\'s length should be in range of 3 to 100' }
end
