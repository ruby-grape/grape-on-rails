require 'spec_helper'

describe "Exceptions", :js => true, :type => :feature do
  before :each do
    visit "/api/raise"
  end
  it "displays 500 error page" do
    page.find("title").text.should == "Action Controller: Exception caught"
  end
end

