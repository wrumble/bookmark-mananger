feature 'Adding links' do
  scenario 'I can save a website address and title' do
    visit 'links/new'
    fill_in 'title', with: 'Capybara'
    fill_in 'url', with: 'http://www.capybara.com'
    click_button 'Add link'

    expect(current_path).to eq '/links'

    within 'ul#links' do
      expect(page).to have_content 'Capybara'
    end
  end
end
