class AddIndexesToLinksAndClicks < ActiveRecord::Migration[5.2]
  def change
    add_index :links, [:token], unique: true
    add_index :clicks, [:link_id]
  end
end
