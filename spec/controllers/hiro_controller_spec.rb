require 'rails_helper'

describe HiroController, type: :controller do

  # TODO: Replace this with FactoryGirl
  PATH_TO_IMAGE = "#{Rails.root}/spec/fixtures/files/sapo.jpg".freeze

  before do
    IO.write(PATH_TO_IMAGE, '')
    image = File.open(PATH_TO_IMAGE)

    Image.create!(name: 'example_image', image: image)
  end

  after { File.delete(PATH_TO_IMAGE) if File.exist?(PATH_TO_IMAGE) }

  describe 'GET #index' do
    it('when an image id is passed returns http success') do
      get :index, params: { image_id: '1' }
      expect(response).to have_http_status(:success)
    end
  end
end
