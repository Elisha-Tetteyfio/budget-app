require 'rails_helper'

RSpec.describe '/groups', type: :request do
  user = User.create(name: 'User1', email: 'ee@com', password: 'eeeeee')
  subject { Group.new }
  before :each do
    subject.user_id = user.id
    subject.name = 'Clothes'
    subject.icon = 'https//google.com'
    subject.id = 1
    subject.save
    sign_in user
  end

  describe 'GET /index' do
    it " '/groups' should lead to the group index page" do
      get groups_path
      expect(response).to render_template(:index)
    end
  end

  describe 'GET /show' do
    it " '/groups' should lead to the group index page" do
      get group_path subject
      expect(response).to render_template(:show)
    end
  end

  describe 'GET /new' do
    it 'renders a successful response' do
      get new_group_path
      expect(response).to render_template(:new)
    end
  end
end
