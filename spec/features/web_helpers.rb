def add_a_link
  visit("/links")
  click_button "add a link"
  fill_in :title, with: "Ted Cruz Face Punch"
  fill_in "url", with: "https://gfycat.com/IdleCreamyDanishswedishfarmdog"
  click_button "add link"
end

def add_a_tag
  visit("/links")
  click_button "add a link"
  fill_in :title, with: "Ted Cruz Face Punch"
  fill_in "url", with: "https://gfycat.com/IdleCreamyDanishswedishfarmdog"
  fill_in "tags", with: "elbow"
  click_button "add link"
end
