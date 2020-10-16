require './lib/app.rb'

feature 'Testing infrastructure' do
  scenario 'Can run app and check page content' do
    visit('/')
    expect(page).to have_content 'Macros Calculator'
  end
 end