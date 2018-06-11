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

class Link < ApplicationRecord
  has_many :clicks

  validates :target_url, presence: true, url: { allow_blank: true }, length: { maximum: 2048 }
  validates :token, presence: true, length: { maximum: 32 }

  scope :latest, -> { order(id: :desc).limit(10) }
end
