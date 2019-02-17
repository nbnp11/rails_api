require 'rails_helper'

RSpec.describe BuildingsController, type: :controller do
  describe 'test create method' do
    it 'should return json of created object' do
      #binding.pry
      params = {}
      params[:data] = {}
      params[:data][:building_params] = { bclass: 'Z',
                                          street: 'Dekabristov',
                                          housenumber: '13',
                                          floors: '44' }
      post :create, params: params
      expect(response.header['Content-Type']).to include 'application/vnd.api+json'
    end
  end

  context 'test update method' do
    it 'should return json of updated object' do
      #binding.pry
      params = { id: Building.last.id }
      patch :update, params: params
      expect(response.header['Content-Type']).to include 'application/vnd.api+json'
    end
  end

  context 'test delete method' do
    it 'should delete building' do
      params = { id: Building.last.id }
      future_count = Building.count - 1
      delete :delete, params: params
      expect(Building.count).to eq future_count
    end
  end

  context 'test show method' do
    it 'should return json of object' do
      params = { id: Building.last.id }
      get :show, params: params
      expect(response.header['Content-Type']).to include 'application/vnd.api+json'
    end
  end

  context 'test index method' do
    it 'should return all buildings if no params' do
      #json_response = Building.all.to_json
      get :index
      expect(response.header['Content-Type']).to include 'application/vnd.api+json'
    end
  end
end
