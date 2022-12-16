# frozen_string_literal: true

class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :doctor

  validates :location, :appointment_time, :doctor_name, presence: true
end
