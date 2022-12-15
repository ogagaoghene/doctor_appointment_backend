require 'rails_helper'

RSpec.describe Doctor, type: :model do
  subject do
    described_class.new(
      name: 'Andrew Okoh',
      email: 'a.okoh@gmail.com',
      phonenumber: '08123467820',
      specialty: 'Gynecologist',
      picture: 'https://i.imgur.com/g8IFvWq.jpg',
      location: 'Lagos',
      years_of_experience: 6
    )
  end

  it 'is not valid without a name' do
    subject.name = nil
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

  it 'is not valid without a phone number' do
    subject.phonenumber = nil
    expect(subject).to_not be_valid
  end

   it 'is not valid without years_of_experience' do
    subject.years_of_experience = nil
    expect(subject).to_not be_valid
  end
end
