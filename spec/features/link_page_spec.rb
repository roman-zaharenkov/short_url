require 'rails_helper'

describe 'Link page' do
  let(:link) { create(:link) }

  before do
    create_list(:click, 5, link: link)

    visit link_path(link)
  end

  it 'displays Original URL' do
    expect(page).to have_content("Original URL:\n#{link.target_url}")
  end

  it 'displays Short URL' do
    expect(page).to have_content("Short URL:\n")
  end

  it 'displays total clicks count' do
    expect(page).to have_content("Total clicks count:\n5")
  end
end
