require 'spec_helper'

describe "Exceptions", :js => true, :type => :feature do
  before :each do
    visit "/api/raise"
  end
  it "displays 500 error page" do
    if RUBY_PLATFORM == 'java'
      title.should == "We're sorry, but something went wrong (500)"
    else
      title.should == "Action Controller: Exception caught"
    end
  end
end

