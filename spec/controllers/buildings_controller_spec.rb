require 'rails_helper'

RSpec.describe BuildingsController, type: :controller do
  context 'test create method' do
    it 'should return json of create object' do
      post :create
      json_response = Building.last.to_json
      expect(response.body).to eq(json_response)
    end
  end

  context 'test update method' do
    it 'should return json of updated object' do
      params = { id: Building.last.id }
      patch :update, params: params
      json_response = Building.last.to_json
      json_response = JSON.parse json_response.gsub('=>', ':')
      expect( JSON.parse response.body.gsub('=>', ':' )).to eq (json_response)
    end
  end

  context 'test delete method' do
    it 'should delete building' do
      params = {id: Building.last.id }
      future_count = Building.count - 1
      delete :delete, params: params
      expect(Building.count).to eq future_count
    end
  end
end
