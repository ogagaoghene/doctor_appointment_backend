require 'rails_helper'

RSpec.describe Doctor, :type => :model do
  subject {
    described_class.new(
      name: 'Andrew Okoh',
      email: 'nkeiru@yahoo.com',
      phonenumber: '08079976534',
      specialty: 'Dentist',
      years_of_experience: 15,
      picture: 'https://i.imgur.com/LTJ8mJO.jpg',
      location: 'Enugu')
 }

  it 'is not valid without a name' do
    subject.full_name = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without an email' do
    subject.email = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a location' do
    subject.location = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a specialty' do
    subject.specialty = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a picture' do
    subject.picture = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without years of experience' do
    subject.years_of_experience = nil
    expect(subject).to be_valid
  end

  it 'it is not valid without a phone number' do
    subject.phonenumber = nil
    expect(subject).to_not be_valid
  end
end