feature 'home route displays title' do
  scenario 'user visits homepage and sees title' do
    visit('/')
    expect(page).to have_content('Welcome to your Daily Diary')
  end

  scenario 'user chooses the add entry option' do
    visit('/')
    choose 'add_entry'
    click_button 'Submit'

    expect(page).to have_field('diary entry')
  end

end