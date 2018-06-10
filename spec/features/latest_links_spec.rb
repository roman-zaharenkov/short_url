require 'rails_helper'

describe 'Latest links' do
  before do
    create_list(:link, 3)
  end

  it 'displays a list of latest links' do
    visit root_path

    expect(page).to have_content('Latest links')
    expect(page).to have_selector('.latest_links table tr', count: 4) # 3 rows + 1 header
  end
end
