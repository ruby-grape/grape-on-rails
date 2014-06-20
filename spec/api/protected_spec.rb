require 'spec_helper'

describe Acme::Protected do
  context 'without authorization' do
    it 'ping' do
      get '/api/protected/ping'
      expect(response.status).to eq 401
      expect(response.body).to eq ''
    end
  end
  context 'with incorrect authorization' do
    it 'ping' do
      get '/api/protected/ping', nil,
          'HTTP_AUTHORIZATION' => ActionController::HttpAuthentication::Basic.encode_credentials('foo', 'bar')

      expect(response.status).to eq 401
      expect(response.body).to eq ''
    end
  end
  context 'with authorization' do
    it 'ping' do
      get '/api/protected/ping', nil,
          'HTTP_AUTHORIZATION' => ActionController::HttpAuthentication::Basic.encode_credentials('username', 'password')

      expect(response.status).to eq 200
      expect(response.body).to eq({ ping: 'pong' }.to_json)
    end
  end
end
