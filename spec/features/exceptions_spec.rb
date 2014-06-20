require 'spec_helper'

describe 'Exceptions', js: true, type: :feature do
  before :each do
    visit '/api/raise'
  end
  it 'displays 500 error page' do
    expect(title).to eq 'Action Controller: Exception caught'
  end
end
