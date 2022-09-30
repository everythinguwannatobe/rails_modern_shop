require "rails_helper"

RSpec.describe "Users::Accounts", type: :request do
  describe "GET /show" do
    it "returns http success" do
      get "/users/account/show"
      expect(response).to have_http_status(:success)
    end
  end
end
