require 'spec_helper'

describe Acme::Post do
  [ true, false ].each do |reticulated|
    it "POST #{reticulated ? 'reticulated' : 'unreticulated' } spline" do
      post "/api/spline", { 'reticulated' => reticulated }.to_json, "Content-Type" => "application/json"
      response.status.should == 201
      response.body.should == { "reticulated" => reticulated }.to_json
    end
  end

end
