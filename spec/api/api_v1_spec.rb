require 'spec_helper'

describe API do
  context "v1" do
    context "system" do
      it "ping" do
        get "/api/v1/system/ping"
        response.body.should == { :ping => "pong" }.to_json
      end
    end
  end
end

