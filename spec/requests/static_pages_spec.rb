require 'spec_helper'

describe "StaticPages" do
  describe "GET /static_pages" do
    it "should have the content 'briefcase'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
        visit '/static_pages/home'
        page.should have_content('Briefcase')
    end
  end
end
