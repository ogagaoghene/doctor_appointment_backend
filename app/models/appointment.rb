# frozen_string_literal: true

class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :doctor

  validates :user_id, :doctor_id, :city, :appointment_time, presence: true

end
