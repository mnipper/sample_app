require 'spec_helper'

describe "Static Pages" do
  
  subject { page }

  describe "Home page" do
    before { visit root_path }
    it { should have_selector('h1', :text => application_name) }
    it { should have_selector('title', text: full_title('')) }
  end

  describe "Help page" do
    before { visit help_path }
    it { should have_content('Help') }
    it { should have_selector('title', :text => full_title('Help')) }
  end

  describe "About page" do
    before { visit about_path }
    it { should have_content('About us') }
    it { should have_selector('title', :text => full_title('About us')) }
  end

  describe "Contact page" do
    before { visit contact_path }
    it { should have_content('Contact') }
    it { should have_selector('title', :text => full_title('Contact us')) }
  end
end
