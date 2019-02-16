require 'rails_helper'

RSpec.describe BuildingsController, type: :controller do
  context 'test create method' do
    it 'would return json of create object' do
      post :create
      json_response = Building.last.to_json
      expect(response.body).to eq(json_response)
    end
  end

  context 'test update method' do
    it 'would return json of updated object' do
      params = { id: Building.last.id }
      patch :update, params: params
      json_response = Building.last.to_json
      json_response = JSON.parse json_response.gsub('=>', ':')
      expect( JSON.parse response.body.gsub('=>', ':' )).to eq (json_response)
    end
  end
end
