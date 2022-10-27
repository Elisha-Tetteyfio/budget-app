require 'rails_helper'

RSpec.describe 'SplashScreens', type: :request do
  describe 'GET /index' do
    it 'it displays the Splash screen' do
      get root_path
      expect(response).to render_template(:index)
    end
  end
end
