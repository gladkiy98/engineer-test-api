class PhoneNumbersController < ApplicationController
  def create
    phone_number = PhoneNumber.create(phone_number_params)

    return render json: phone_number, status: :created if phone_number.save

    render json: { errors: 'Bad request' }, status: :bad_request
  end

  private

  def phone_number_params
    params.require(:phone_number).permit(:number)
  end
end
