require 'spec_helper'

describe Acme::Headers do
  it 'returns all headers' do
    get '/api/headers'
    expect(JSON.parse(response.body)).to include(
      'Accept' => 'text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5',
      'Cookie' => '',
      'Host' => 'www.example.com'
    )
  end

  it 'returns a Host header' do
    get '/api/headers/Host'
    expect(JSON.parse(response.body)).to eq('Host' => 'www.example.com')
  end

  it 'headers are converted to pascal-case' do
    get '/api/headers/Host'
    expect(JSON.parse(response.body)).to eq('Host' => 'www.example.com')
  end

  it 'headers via arg' do
    get '/api/headers', headers: {
      'HTTP_RETICULATED_SPLINE' => 42,
      'Something' => 1,
      'SOMETHING_ELSE' => 1
    }
    expect(JSON.parse(response.body)).to include(
      'Accept' => 'text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5',
      'Cookie' => '',
      'Host' => 'www.example.com',
      'Reticulated-Spline' => 42,
      'Something' => 1
    )
  end
end
