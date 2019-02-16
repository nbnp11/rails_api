require 'rails_helper'

RSpec.describe BuildingsController, type: :controller do
  context 'test create method' do
    it 'would return json on buildings#create' do
      post :create
      json_response = Building.last.to_json
      expect(response.body).to eq(json_response)
    end
  end
end
