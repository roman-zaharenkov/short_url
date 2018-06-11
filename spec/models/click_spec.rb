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

require 'rails_helper'

describe Click do
  it { should validate_presence_of(:link) }
end
