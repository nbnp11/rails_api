# frozen_string_literal: true

class Filter
  attr_reader :params

  def initialize(params)
    @params = params
  end

  def call
    @listing = Building.all
  end
end