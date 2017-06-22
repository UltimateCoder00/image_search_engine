require 'spec_helper'

feature 'Click Colour Options' do

  before do
    visit('/')
  end

  scenario 'Show colour options' do
    expect(page).to have_content 'Red'
    expect(page).to have_content 'Pink'
    expect(page).to have_content 'Orange'
    expect(page).to have_content 'Yellow'
    expect(page).to have_content 'Green'
    expect(page).to have_content 'Blue'
    expect(page).to have_content 'Purple'
  end

  scenario 'Clickable colour options' do
    expect(page).to have_button 'Red'
    expect(page).to have_button 'Pink'
    expect(page).to have_button 'Orange'
    expect(page).to have_button 'Yellow'
    expect(page).to have_button 'Green'
    expect(page).to have_button 'Blue'
    expect(page).to have_button 'Purple'

  end

  scenario 'Click Red option' do
    click_button "Red"
    expect(page).to have_content 'Search result: Red'
  end

  scenario 'Click Pink option' do
    click_button "Pink"
    expect(page).to have_content 'Search result: Pink'
  end

  scenario 'Click Orange option' do
    click_button "Orange"
    expect(page).to have_content 'Search result: Orange'
  end

  scenario 'Click Yellow option' do
    click_button "Yellow"
    expect(page).to have_content 'Search result: Yellow'
  end

  scenario 'Click Green option' do
    click_button "Green"
    expect(page).to have_content 'Search result: Green'
  end

  scenario 'Click Blue option' do
    click_button "Blue"
    expect(page).to have_content 'Search result: Blue'
  end

  scenario 'Click Purple option' do
    click_button "Purple"
    expect(page).to have_content 'Search result: Purple'
  end
end
