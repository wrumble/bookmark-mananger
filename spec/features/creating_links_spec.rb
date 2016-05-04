feature "adds a new link" do
  scenario "adds new link" do
    add_a_link
    expect(page).to have_content title
  end
end
