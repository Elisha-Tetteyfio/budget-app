require 'rails_helper'

RSpec.describe Group, type: :model do
  user = User.create(name: 'User1')
  subject { described_class.new }
  before :each do
    subject.user = user
    subject.name = 'Clothes'
    subject.icon = 'https//google.com'
  end

  it 'Expect the subject to be valid' do
    expect(subject).to be_valid
  end

  it 'Should have a name' do
    subject.name = nil
    expect(subject).to_not be_valid
  end
  it 'Should have an icon' do
    subject.icon = nil
    expect(subject).to_not be_valid
  end
end
