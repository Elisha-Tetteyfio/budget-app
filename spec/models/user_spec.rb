require 'rails_helper'

RSpec.describe User, type: :model do
  subject { described_class.new }
  before :each do
    subject.name = 'User1'
    subject.email = "user@com"
    subject.password = "aaaaaa"
  end

  it 'Expect the subject to be valid' do
    expect(subject).to be_valid
  end

  it 'Should have a name' do
    subject.name = nil
    expect(subject).to_not be_valid
  end
  it 'Should have an email' do
    subject.email = nil
    expect(subject).to_not be_valid
  end
  it 'Should have a password' do
    subject.password = nil
    expect(subject).to_not be_valid
  end
  it 'Should have password with more than six characters' do
    subject.password = "fffff"
    expect(subject).to_not be_valid
  end
  
end