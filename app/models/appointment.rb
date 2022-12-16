# frozen_string_literal: true

class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :doctor
  validates :doctor_id, :user_id, :doctor_name, :appointment_time, :location, presence: true
end
