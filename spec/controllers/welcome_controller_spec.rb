require 'rails_helper'

describe WelcomeController, type: :controller do

  # TODO: Replace this with FactoryGirl
  before do
    Image.create!(name: 'example_image',
                  image: File.open("#{Rails.root}/spec/fixtures/files/sapo.jpg"))
  end

  describe 'GET #index' do
    it('when an image id is passed returns http success') do
      get :index, params: { image_id: '1' }
      expect(response).to have_http_status(:success)
    end
  end
end
