require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the add word form file path', {:type => :feature}) do
  it('processes the user click to return WORD FORM page') do
    visit('/')
    click_link('Add New Word')
    expect(page).to have_content('Add Word')
  end
end

describe('the add new word success file path', {:type => :feature}) do
  it('processes the input and click to return WORD SUCCESS page') do
    visit('/words/new')
    fill_in('word', :with => 'Rock')
    click_button('Save')
    expect(page).to have_content('Success')
  end
end

describe('the path to add definition', {:type => :feature}) do
  it('processes the users click and takes them to DEFINITION FORM') do
    visit('/words/1')
    click_link('Add Definition')
    expect(page).to have_content('Add Definition')
  end
end
