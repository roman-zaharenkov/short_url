require 'sinatra/base'
require 'capybara_discoball'

class FakeExternalSite < Sinatra::Base
  get '/search' do
    params.to_json
  end
end
