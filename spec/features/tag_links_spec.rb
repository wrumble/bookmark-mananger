feature 'Tags links' do
  scenario 'Saves a tag' do
    add_a_tag
    link = Link.first
    expect(link.tags.map(&:name)).to include("elbow")
  end
end
