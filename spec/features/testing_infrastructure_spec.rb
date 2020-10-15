feature 'Entering name' do
  scenario 'submitting name' do
    visit('/')
    fill_in :Name, with: 'Emily'
    click_button "Submit"
    expect(page).to have_content 'Emily'
  end
end

feature 'checking gender' do
  scenario 'submiting female' do
    visit('/')
    fill_in :Name, with: 'Emily'
    choose 'Female'
    click_button "Submit"
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
