require 'rails_helper'

describe 'Create new link' do
  let(:url) { 'https://validurl.com?q=long+search+query' }

  before do
    visit root_path
    fill_in 'link[target_url]', with: url
    click_button 'Shorten URL'
  end

  it 'creates a new record in database' do
    expect(Link.last.target_url).to eq(url)
  end

  it 'redirects to link page' do
    expect(page).to have_content("Original URL:#{url}")
  end

  context 'when URL is blank' do
    let(:url) { '' }

    it 'displays error' do
      expect(page).to have_content('can\'t be blank' )
    end
  end

  context 'when URL is not valid' do
    let(:url) { 'qqq' }

    it 'displays error' do
      expect(page).to have_content('is not a valid URL' )
    end
  end
end
