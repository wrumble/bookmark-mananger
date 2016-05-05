feature 'User signs up' do

  scenario 'I can sign up as a new user' do
    expect { sign_up }.to change(User, :count).by(1)
    expect(page).to have_content('Welcome stuff@what.com')
    expect(User.first.email).to eq('stuff@what.com')
  end

end
