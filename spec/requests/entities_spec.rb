require 'rails_helper'

RSpec.describe '/entities', type: :request do
  user = User.create(name: 'User1', email: 'ee@com', password: 'eeeeee')
  group = Group.create(user:, name: 'Clothes', icon: 'aaa')
  subject { Entity.new }
  before :each do
    subject.name = 'Shoes'
    subject.group = group
    subject.author = user
    subject.amount = 5
    subject.id = 1
    subject.save
    sign_in user
  end

  describe 'GET /index' do
    it " '/groups/:id/entities' should lead to the group index page" do
      get group_entities_path group
      expect(response).to render_template(:index)
    end
  end

  describe 'GET /show' do
    it " '/groups/:id/entities/:id' should lead to the group index page" do
      get group_entity_path group, subject
      expect(response).to render_template(:show)
    end
  end

  describe 'GET /new' do
    it 'renders a successful response' do
      get new_group_entity_path group
      expect(response).to render_template(:new)
    end
  end
end
