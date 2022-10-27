require 'rails_helper'

RSpec.describe "/users", type: :request do
  user = User.create(name: 'User1', email: 'ee@com', password: 'eeeeee')
  before :each do
    sign_in user
  end

  describe "GET /index" do
    it " '/users' should redirect to the groups page" do
      get users_path 
      expect(response).to render_template(:index)
    end
  end

end
