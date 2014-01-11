require 'spec_helper'

describe 'Exceptions', js: true, type: :feature do
  before :each do
    visit '/api/raise'
  end
  it 'displays 500 error page' do
    title.should == 'Action Controller: Exception caught'
  end
end
