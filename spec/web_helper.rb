def sign_up
  visit '/users/new'
  expect(page.status_code).to eq 200
  fill_in :email, with: 'stuff@what.com'
  fill_in :password, with: 'bananas'
  click_button 'Sign up'
end
