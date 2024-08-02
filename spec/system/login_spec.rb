require_relative "../spec_helper"

RSpec.describe "User Login", type: :system do
  feature "login" do
    scenario "visit to login page" do
      visit ENV["LOGIN_URL"]

      title = "Sign In | ParentSquare"

      expect(page).to have_title(title)
    end
  end
end
