require 'rails_helper'

describe 'Redirect' do
  it 'redirects /:token to the target URL' do
    Capybara::Discoball.spin(FakeExternalSite) do |server|
      link = create(:link, target_url: "#{server.url}/search?q=ruby+on+rails")
      visit "/#{link.token}"
      expect(page).to have_content('ruby on rails')
    end
  end
end
