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

FactoryBot.define do
  factory :link do
    target_url 'https://www.google.com/search?q=ruby+on+rails'
    token { CreateLink.generate_token }
  end
end
