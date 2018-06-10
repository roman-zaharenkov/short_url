class CreateLinks < ActiveRecord::Migration[5.2]
  def change
    create_table :links do |t|
      t.string :target_url, limit: 2048
      t.string :token, limit: 32

      t.timestamps
    end
  end
end
