require 'rails_helper'

RSpec.describe Doctor, type: :model do
  subject do
    described_class.new(
      name: 'Andrew Okoh',
      email: 'a.okoh@gmail.com',
      phonenumber: '08123467820',
      specialty: 'Gynecologist',
      fee: 200,
      picture: 'https://img.freepik.com/free-photo/happy-black-male-doctor-using-tablet-computer-technology-medicine-concept_1262-12344.jpg?w=740&t=st=1671022983~exp=1671023583~hmac=5b3ed441b0fd6349225fa8ea682887b9ccddbd38c83877283adffffd75317083',
      location: 'Abuja',
      years_of_experience: 6
    )
  end

  it 'is valid with a name not longer than 20 characters' do
    subject.name = 'Esi Ogagaoghene'
    expect(subject).to be_valid
  end

  it 'is valid with a specialty not longer than 30 characters' do
    subject.specialty = 'Neurologist'
    expect(subject).to be_valid
  end

  it 'is valid with a phone number not longer than 15 digits' do
    subject.phonenumber = '07069102383'
    expect(subject).to be_valid
  end

  it 'is valid with an email address with an @ symbol' do
    subject.email = 'esi@gmail.com'
    expect(subject).to be_valid
  end

  it 'is valid with an email address of this form - esi.ogagaoghene@yahoo.com' do
    subject.email = 'esi.ogagaoghene@yahoo.com'
    expect(subject).to be_valid
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
