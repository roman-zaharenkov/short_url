require 'rails_helper'

describe 'Link page' do
  let(:link) { create(:link) }

  before do
    create_list(:click, 5, link: link)

    visit link_path(link, format: :json)
  end

  it 'returns JSON data' do
    expect(page).to have_content("\"total_clicks\":5")
  end
end
