# frozen_string_literal: true

class BuildingsController < ApplicationController
  def create
    @building = Building.create!
    render json: @building
  end

  def update; end

  def delete; end

  def show; end

  def index; end
end
