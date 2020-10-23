feature 'home route displays title' do
  scenario 'user visits homepage and sees title' do
    visit('/')
    expect(page).to have_content('Welcome to your Daily Diary')
  end

  scenario 'user chooses the add entry option' do
    visit('/')
    click_button 'add_entry'
   
    expect(page).to have_field('DiaryEntry')
    expect(page).to have_content('Add your new diary entry below')
  end

end