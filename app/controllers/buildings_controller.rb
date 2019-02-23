# frozen_string_literal: true

class BuildingsController < ApplicationController
  def create
    binding.pry
    return unless params[:data][:building_params]
    @building = Building.create!(building_params)
    @block = @building.blocks.create!(block_params) if @building && block_params
    @offer = @block.offers.create!(offer_params) if @block && offer_params
    @price = @offer.create_price!(price_params) if @offer && price_params
    render json: @building
  end

  def update
    @building = Building.find(params[:id])
    @building.touch
    render json: @building if @building.save!
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

  def orm_request
    @collection = Block.where(area: 150..300)
                      .where(floor: [1,8,10])
                      .joins(:building)
                      .where(buildings: {bclass: "A", street: 'Пресненская набережная'})
                      .joins(offers: :price)
                      .where(prices: {pricevalue: 0..5000})
    render json: @collection
  end

  def sql_request
    @sql = "SELECT blocks.* FROM blocks
             INNER JOIN buildings ON buildings.id = blocks.building_id
             INNER JOIN offers ON offers.block_id = blocks.id
             INNER JOIN prices ON prices.offer_id = offers.id
             WHERE blocks.area BETWEEN 150 AND 300
             AND blocks.floor IN (1, 8, 10)
             AND buildings.bclass = 'A'
             AND buildings.street = 'Пресненская набережная'
             AND prices.pricevalue BETWEEN 0 AND 5000"
    @collection = ActiveRecord::Base.connection.execute(@sql)
    render json: @collection
  end

  private

  def building_params
    params[:data].require(:building_params).permit(:bclass,
                                                   :street,
                                                   :housenumber,
                                                   :floors)
  end

  def block_params
    return false unless params[:data][:block_params]

    params[:data].require(:block_params).permit(:area, :floor)
  end

  def offer_params
    return false unless params[:data][:offer_params]

    params[:data].require(:offer_params).permit(:offertype)
  end

  def price_params
    return false unless params[:data][:price_params]

    params[:data].require(:price_params).permit(:pricevalue, :currency)
  end
end
