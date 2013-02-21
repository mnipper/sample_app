require 'spec_helper'

=begin
describe "UserPages" do
  subject { page }
  describe "profile page" do
    pending "until i fix capybara"

    let(:user) { FactoryGirl.create(:user)  }
    #before { visit user_path(user) }

    it { should have_selector('h1', text: user.name) }
  end

  describe "signup" do
    pending "until i fix capybara"

    before { visit signup_path }

    describe "with invalid information" do
      #expect { click_button "Creat my account" }.not_to change(User, :count)
    end
  end
end
=end
