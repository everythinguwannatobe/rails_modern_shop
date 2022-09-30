require "rails_helper"

RSpec.describe "Admin::Dashboards", type: :request do
  describe "GET /show" do
    let(:user) { create(:user) }

    it "returns http success" do
      user.admin = true
      login_as(user)

      get admin_root_path
      expect(response).to have_http_status(:success)
    end
  end
end
