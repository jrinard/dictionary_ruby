require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the word list file path', {:type => :feature}) do
  it('processes the user click to return word list page') do
    visit('/')
    click_link('Words List')
    expect(page).to have_content('Word List')
  end
end

describe('the add word form file path', {:type => :feature}) do
  it('processes the user click to return add word form page') do
    visit('/')
    click_link('Add New Word')
    expect(page).to have_content('Add word')
  end
end

describe('the add new word success file path', {:type => :feature}) do
  it('processes the input and click to return success page') do
    visit('/word/new')
    fill_in('word', :with => 'Rock')
    click_button('Save')
    expect(page).to have_content('Success')
  end
end
