feature 'Entering name' do
    scenario 'submitting name' do
      visit('/')
      fill_in :Name, with: 'Emily'
      click_button "Submit"
      expect(page).to have_content 'Emily'
    end
  end