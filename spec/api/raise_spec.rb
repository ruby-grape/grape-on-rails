require 'spec_helper'

describe Acme::Raise do
  it "raises an exception" do
    get "/api/raise"
    response.status.should == 500
  end
end

