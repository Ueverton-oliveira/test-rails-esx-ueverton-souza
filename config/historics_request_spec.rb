require "rails_helper"

describe "Api::V1::Historics", type: :request do
  context "GET historics" do
    let(:url) { "/api/v1/historics" }
    let!(:certificate) { create(:certificate) }
    let(:historic) { create(:historic, certificate_id: certificate.id) }

    it "returns all historics" do
      get url, xhr: true
      expect(to_json['historics']).to contain_exactly historics.as_json(only: %i(created_at certificate_id))
    end

    it "returns success status" do
      get url, xhr: true
      expect(response).to have_http_status(:ok)
    end
  end

  context "with invalid params " do
    let(:historic_invalid_params) do
      { historics: attributes_for(:historic, certificate_id: nil) }.to_json
    end

    it 'returns error' do
      post url, params: address_invalid_params
      expect(to_json['errors']['fields']).to have_key('name')
    end

    it 'returns unprocessable_entity status' do
      post url, params: address_invalid_params
      expect(response).to have_http_status(:unprocessable_entity)
    end
  end
end
