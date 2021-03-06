require 'rails_helper'

RSpec.describe HistoricsController, type: :controller do
  describe "GET #index" do
    it "returns success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end
end
