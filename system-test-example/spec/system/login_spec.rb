require_relative "../spec_helper"

RSpec.describe "User Login", type: :system do
  feature "login" do
    scenario "visit to login page" do
      visit "https://www.parentsquare.com/signin"

      expect(page).to have_title("Sign In | ParentSquare")
    end
  end
end
