feature 'calculating calories' do
    scenario 'displays correct TDEE' do
        enter_info
        expect(page).to have_content '1167'
    end
end

feature 'calculating carbs' do
   scenario 'displays correct carb recommendation' do
     enter_info
     expect(page).to have_content 'Carbs: 160g'
   end
end

feature 'calculating fat' do
  scenario 'displays correct fat recommendation' do
    enter_info
    expect(page).to have_content 'Fat: 32g'
  end
end

feature 'calculating protein' do
  scenario 'displays correct protein recommendation' do
    enter_info
    expect(page).to have_content 'Protein: 58g'
  end
end
