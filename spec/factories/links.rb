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

FactoryBot.define do
  factory :link do
    url 'https://www.google.com/search?q=ruby+on+rails'
    token { SecureRandom.urlsafe_base64(10) }
  end
end
