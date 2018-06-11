class CreateClicks < ActiveRecord::Migration[5.2]
  def change
    create_table :clicks do |t|
      t.integer :link_id
      t.string :user_agent
      t.string :ip
      t.string :referer

      t.datetime :created_at
    end
  end
end
