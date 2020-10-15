def enter_info
    visit('/')
    fill_in :Name, with: 'Emily'
    choose 'Female'
    fill_in :age, with: 25
    fill_in :height, with: 154
    fill_in :weight, with: 45
    click_button "Submit"
end