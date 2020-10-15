require './lib/app.rb'

feature 'Entering name' do
  scenario 'submitting name' do
    enter_info
    expect(page).to have_content 'Emily'
  end
end

feature 'checking gender' do
  scenario 'submiting female' do
    enter_info
    expect(page).to have_content 'female'
  end

  scenario 'submitting male' do
    visit('/')
    fill_in :Name, with: 'Emilio'
    choose 'Male'
    click_button "Submit" 
    expect(page).to have_content 'male'
  end
 end

 feature 'calculating calories' do
    scenario 'displays correct TDEE' do
        enter_info
        expect(page).to have_content '1167'
    end
 end
