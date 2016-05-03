feature 'Creating new links' do
	scenario 'if I add a new link, it will appear on the links page' do
		visit '/links'
		click_button 'add a link'
		fill_in('title', with: 'imgur')
		fill_in('url', with: 'http://imgur.com/')
		click_button 'Save bookmark'
		expect(page).to have_content('imgur')
	end
end