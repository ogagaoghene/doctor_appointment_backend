require 'rails_helper'

RSpec.describe User, type: :model do
  subject do
    described_class.new(
      id: 1,
      name: 'Ogaga',
      email: 'ogaga@gmail.com',
      password: 'ogaga',
      password_digest: 'ogaga'
    )
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is valid with a name not longer than 20 characters' do
    subject.name = 'abcccccsssssdee'
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

  it 'is invalid with an email address without an @ symbol' do
    subject.email = 'esigmail.com'
    expect(subject).to_not be_valid
  end

  it 'is invalid with a name less than 3 characters' do
    subject.name = 'ab'
    expect(subject).to_not be_valid
  end

  it 'is not valid without a name' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'is valid without an email' do
    subject.email = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a password' do
    subject.password = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a password_digest' do
    subject.password_digest = nil
    expect(subject).to_not be_valid
  end
end
