require "rails_helper"

RSpec.describe "Users::Dashboards", type: :request do
  describe "GET /show" do
    let(:user) { create(:user) }

    it "returns http success" do
      login_as(user)

      get "/users"
      expect(response).to have_http_status(:success)
    end
  end
end
