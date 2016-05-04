feature "adds a new link" do
  scenario "adds new link" do
    visit("/links")
    click_button "add a link"
    title = "Ted Cruz Face Punch"
    fill_in :title, with: title
    url = "https://gfycat.com/IdleCreamyDanishswedishfarmdog"
    fill_in "url", with: url
    click_button "add link"
    expect(page).to have_content title

  end

end
