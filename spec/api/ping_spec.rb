require 'spec_helper'

describe Acme::Ping do
  it 'ping' do
    get '/api/ping'
    expect(response.body).to eq({ ping: 'pong' }.to_json)
  end
  it 'ping with a parameter' do
    get '/api/ping?pong=test'
    expect(response.body).to eq({ ping: 'test' }.to_json)
  end
end
