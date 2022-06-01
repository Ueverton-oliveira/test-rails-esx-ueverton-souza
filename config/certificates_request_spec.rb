require "rails_helper"

describe "Api::V1::Certificates", type: :request do
  context "GET certificates" do
    let(:url) { "/api/v1/historics" }
    let(:certificate) { create(:certificate) }

    it "returns all certificates" do
      get url, xhr: true
      expect(to_json['certificates']).to contain_exactly certificates.as_json(only: %i(url status))
    end

    it "returns success status" do
      get url, xhr: true
      expect(response).to have_http_status(:ok)
    end
  end
end