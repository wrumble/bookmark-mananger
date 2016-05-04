feature 'Tags links' do
  scenario 'Saves a tag' do
    add_a_tag
    link = Link.first
    expect(link.tags.map(&:tags)).to include("elbow")
  end
end
