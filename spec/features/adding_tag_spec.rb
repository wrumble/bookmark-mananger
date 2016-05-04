feature 'Adding tags' do
  scenario 'I can add a single tag to a link' do
    visit 'links/new'
    fill_in 'title', with: 'Capybara'
    fill_in 'url', with: 'http://www.capybara.com'
    fill_in 'tags', with: 'Animals'

    click_button 'Add link'
    link = Link.first
    expect(link.tags.map(&:name)).to include('Animals')
  end
end
