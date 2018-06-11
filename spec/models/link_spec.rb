# == Schema Information
#
# Table name: links
#
#  id         :bigint(8)        not null, primary key
#  target_url :string(2048)
#  token      :string(32)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_links_on_token  (token) UNIQUE
#

require 'rails_helper'

describe Link do
  it { should validate_presence_of(:target_url) }
  it { should allow_value('http://foo.com').for(:target_url) }
  it { should allow_value('https://foo.com').for(:target_url) }
  it { should allow_value('https://foo.com/test?q=abc').for(:target_url) }
  it { should validate_presence_of(:token) }
end
