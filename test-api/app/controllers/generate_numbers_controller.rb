class GenerateNumbersController < ApplicationController
  def create
    render json: PhoneNumber.create_random, status: :created
  end
end
