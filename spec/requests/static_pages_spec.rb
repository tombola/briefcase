require 'spec_helper'

describe "StaticPages" do
  describe "Home Page" do
    it "should have the content 'Briefcase'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
        visit '/static_pages/home'
        page.should have_content('Briefcase')
    end
  end
  describe "Help Pages" do
    it "should have the content 'Help'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
        visit '/static_pages/help'
        page.should have_content('Help')
    end
  end
  describe "About Pages" do

    it "should have a heading including 'About'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
        visit '/static_pages/about'
        page.should have_selector('h1', :text => "About")
    end
  end
end
