require 'spec_helper'

describe 'Homepage', :js, type: :feature do
  before do
    visit '/'
  end

  it 'displays index.html page' do
    expect(page.find('h1')).to have_content 'Grape'
  end
end
