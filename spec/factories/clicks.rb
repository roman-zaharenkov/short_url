# == Schema Information
#
# Table name: clicks
#
#  id         :bigint(8)        not null, primary key
#  ip         :string(255)
#  referer    :string(255)
#  user_agent :string(255)
#  created_at :datetime
#  link_id    :integer
#
# Indexes
#
#  index_clicks_on_link_id  (link_id)
#

FactoryBot.define do
  factory :click do
    association :link
    ip '192.168.0.1'
    referer 'http://localhost:3000'
    user_agent 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_5)'
  end
end
