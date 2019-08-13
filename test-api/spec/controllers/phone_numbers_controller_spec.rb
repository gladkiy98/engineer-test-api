require 'rails_helper'

RSpec.describe PhoneNumbersController, type: :controller do
  describe '#create' do
    context 'create custom number with valid params' do
      before do
        post :create, params: params
      end

      let(:params) do
        { phone_number: { number: 111_111_111_1 } }
      end

      it { expect(response).to have_http_status(:created) }
      it { expect(JSON.parse(response.body)['number']).to eq('1111111111') }
    end

    context 'create custom number with invalid params' do
      before do
        post :create, params: params
      end

      let(:params) do
        { phone_number: { number: 111_111_111 } }
      end

      it { expect(response).to have_http_status(:bad_request) }
      it { expect(JSON.parse(response.body)['errors']).to eq('Bad request') }
    end
  end
end
