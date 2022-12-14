require 'rails_helper'

RSpec.describe User, :type => :model do
  subject {
    described_class.new(,
        doctor_name: "Andrew Okoh",
        appointment_time: "12:24:05",
        location: "Enugu")
  }
  
  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it 'is not valid without a doctor_name' do
    subject.name = nil
    expect(subject).to_not be_valid
  end
 
  it 'is valid without an appointment time' do
    subject.email = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a location' do
    subject.password = nil
    expect(subject).to_not be_valid
  end
  
end
