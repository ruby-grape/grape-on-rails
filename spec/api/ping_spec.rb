require 'spec_helper'

describe Acme::Ping do
  it "ping" do
    get "/api/ping"
    response.body.should == { :ping => "pong" }.to_json
  end
end

