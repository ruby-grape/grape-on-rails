require 'spec_helper'

describe 'Homepage', js: true, type: :feature do
  before :each do
    visit '/'
  end
  it 'displays index.html page' do
    page.find('#header h2').should have_content 'riding Ruby on Rails'
  end
end
