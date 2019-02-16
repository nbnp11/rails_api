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

  def delete; end

  def show; end

  def index; end
end
