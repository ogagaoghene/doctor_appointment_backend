require 'rails_helper'

RSpec.describe Appointment, type: :model do
  subject do
    described_class.new(
      id: 1,
      user_id: 1,
      doctor_id: 1,
      doctor_name: 'Andrew Okoh',
      appointment_time: '12:24:05',
      location: 'Enugu'
    )
  end

  it 'is not valid without a doctor_name' do
    subject.doctor_name = nil
    expect(subject).to_not be_valid
  end

  it 'is valid without an appointment time' do
    subject.appointment_time = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a location' do
    subject.location = nil
    expect(subject).to_not be_valid
  end
end
