# frozen_string_literal: true

class BuildingsController < ApplicationController
  def create
    @building = Building.create!
    render json: @building#.serializable_hash
  end

  def update
    @building = Building.find(params[:id])
    @building.touch
    render json: @building if @building.save! #.serializable_hash 
  end

  def delete
    @building = Building.find(params[:id])
    redirect_to buildings_path if @building.destroy!
  end

  def show
    @building = Building.find(params[:id])
    render json: @building#.serializable_hash
  end

  def index
    #binding.pry
    @collection = Filter.new(params[:filter]).call
    #@collection.each {|item| item = item.serializable_hash }
    render json: @collection
  end
end
