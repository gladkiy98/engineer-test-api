class PhoneNumbersController < ApplicationController
  expose :phone_number

  def create
    return render json: phone_number, status: :created if phone_number.save

    render json: { errors: 'Bad request' }, status: :bad_request
  end

  private

  def phone_number_params
    params.require(:phone_number).permit(:number)
  end
end
