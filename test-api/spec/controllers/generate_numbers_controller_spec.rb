require 'rails_helper'

RSpec.describe GenerateNumbersController, type: :controller do
  describe '#create' do
    context 'generate number' do
      before do
        post :create
      end

      it { expect(response).to have_http_status(:created) }
      it { expect(JSON.parse(response.body)['number']).not_to eq(nil) }
    end
  end
end
