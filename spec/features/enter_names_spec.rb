feature 'enter_names' do
  scenario 'enters names' do
    visit('/')
    fill_in :player_1_name, with: 'Fred'
    fill_in :player_2_name, with: 'Josh'
    click_button 'Submit'
    
    # save_and_open_page
    
    expect(page).to have_content 'Fred vs Josh'
  end
end