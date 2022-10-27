require 'rails_helper'

RSpec.describe Entity, type: :model do
  user = User.create(name: 'User1')
  group = Group.create(user_id: user.id, name: 'Clothes', icon: 'https//google.com')
  subject { described_class.new }
  before :each do
    subject.author = user
    subject.group = group
    subject.name = 'Shirt'
    subject.amount = 20
  end

  it 'Expect the subject to be valid' do
    expect(subject).to be_valid
  end

  it 'Should have a name' do
    subject.name = nil
    expect(subject).to_not be_valid
  end
  it 'Should have a group' do
    subject.group = nil
    expect(subject).to_not be_valid
  end
  it 'Should have an amount' do
    subject.amount = nil
    expect(subject).to_not be_valid
  end
  it 'Amount should be numeric' do
    subject.amount = 'Five'
    expect(subject).to_not be_valid
  end
  it 'Amount should be greater than zero' do
    subject.amount = -5
    expect(subject).to_not be_valid
  end
end
