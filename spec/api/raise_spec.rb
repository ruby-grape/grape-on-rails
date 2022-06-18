require 'spec_helper'

describe Acme::Raise do
  it 'raises' do
    expect { get '/api/raise' }.to raise_error('Unexpected error.')
  end
end
