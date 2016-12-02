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
