require "rails_helper"

describe "Api::V1::Historics", type: :request do
  context "GET historics" do
    let(:url) { "/api/v1/historics" }
    let!(:certificate) { create(:certificate) }
    let(:historic) { create_list(:historic, 10, certificate_id: certificate.id)}

    context "without any params" do
      it "returns success status" do
        get url
        expect(response).to have_http_status(:ok)
      end
    end

    context "with search[name] param" do
      let!(:search_certificates) do
        certificates = []
        15.times { |n| certificates << create(:certificate, url: "Search #{n + 1}") }
        certificates
      end

      let(:search_params) { { search: { name: "Search" } } }

      it "returns success status" do
        get url, params: search_params
        expect(response).to have_http_status(:ok)
      end
    end
  end
end
