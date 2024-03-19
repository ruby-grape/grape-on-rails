require 'spec_helper'

describe 'Swagger', :js, type: :feature do
  before do
    visit '/swagger'
  end

  it 'displays Swagger page' do
    expect(page.find('.title')).to have_content 'grape-on-rails'
  end
end
