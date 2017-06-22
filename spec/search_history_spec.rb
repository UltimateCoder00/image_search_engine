require 'spec_helper'

feature 'Check search history' do

  before do
    visit('/')
  end

  scenario 'Click history button' do
    click_button "history"
    expect(page).to have_content 'Search History'
  end

end
