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

class Click < ApplicationRecord
  belongs_to :link

  validates :link, presence: true

  scope :latest_for, ->(link_id) { where(link_id: link_id).order(id: :desc).limit(10) }
end
