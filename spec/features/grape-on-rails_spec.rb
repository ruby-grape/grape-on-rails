require 'spec_helper'

describe "Grape on Rails", :js => true, :type => :feature do
  context "homepage" do
    before :each do
      visit "/"
    end
    it "displays index.html page" do
      page.find("#header h2").should have_content "riding Ruby on Rails"
    end
  end
  context "exception" do
    before :each do
      visit "/api/v1/system/raise"
    end
    it "displays 500 page" do
      page.find("title").text.should == "Action Controller: Exception caught"
    end
  end
end

