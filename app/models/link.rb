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

class Link < ApplicationRecord
  validates :target_url, presence: true, url: { allow_blank: true }, length: { maximum: 2048 }
  validates :token, presence: true, length: { maximum: 32 }
end
