require 'spec_helper'

describe Acme::Ping do
  it 'ping' do
    get '/api/ping'
    response.body.should == { ping: 'pong' }.to_json
  end
  it 'ping with a parameter' do
    get '/api/ping?pong=test'
    response.body.should == { ping: 'test' }.to_json
  end
end
