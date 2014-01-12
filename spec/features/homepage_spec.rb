require 'spec_helper'

describe 'Homepage', js: true, type: :feature do
  before :each do
    visit '/'
  end
  it 'displays index.html page' do
    page.find('h1').should have_content 'Grape'
  end
end
