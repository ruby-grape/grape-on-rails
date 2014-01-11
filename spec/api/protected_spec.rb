require 'spec_helper'

describe Acme::Protected do
  context 'without authorization' do
    it 'ping' do
      get '/api/protected/ping'
      response.status.should eq 401
      response.body.should eq ''
    end
  end
  context 'with incorrect authorization' do
    it 'ping' do
      get '/api/protected/ping', nil,
          'HTTP_AUTHORIZATION' => ActionController::HttpAuthentication::Basic.encode_credentials('foo', 'bar')

      response.status.should eq 401
      response.body.should eq ''
    end
  end
  context 'with authorization' do
    it 'ping' do
      get '/api/protected/ping', nil,
          'HTTP_AUTHORIZATION' => ActionController::HttpAuthentication::Basic.encode_credentials('username', 'password')

      response.status.should eq 200
      response.body.should eq({ ping: 'pong' }.to_json)
    end
  end
end
