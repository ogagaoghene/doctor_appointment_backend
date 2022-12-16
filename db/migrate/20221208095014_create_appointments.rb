# frozen_string_literal: true

class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.string :location
      t.datetime :appointment_time
      t.string :doctor_name


      t.timestamps
    end
  end
end
