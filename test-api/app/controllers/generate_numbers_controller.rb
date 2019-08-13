class GenerateNumbersController < ApplicationController
  def create
    render json: PhoneNumber.create_random, status: :ok
  end
end
