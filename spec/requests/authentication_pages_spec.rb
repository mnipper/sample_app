require 'spec_helper'

describe "AuthenticationPages" do
  describe "signin page" do
    subject { page }

    before { visit signin_path }

    it { should have_selector('h1', text: 'Sign in') }
  end
end
