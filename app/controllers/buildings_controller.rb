# frozen_string_literal: true

class BuildingsController < ApplicationController
  def create
    @building = Building.create!
    render json: @building
  end

  def update
    @building = Building.find(params[:id])
    @building.touch
    render json: @building if @building.save
  end

  def delete
    @building = Building.find(params[:id])
    redirect_to buildings_path if @building.destroy!
  end

  def show
    @building = Building.find(params[:id])
    render json: @building
  end

  def index
    @collection = Filter.new(params[:filter]).call
    render json: @collection
  end
end
