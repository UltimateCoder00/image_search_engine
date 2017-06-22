require 'spec_helper'

feature 'Navigate to search page' do

  before do
    visit('/')
  end

  scenario 'Go to search page' do
    click_button "search"
    expect(page).to have_content 'Click a colour for your image search'
  end

end
