class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :first_name
      t.string :last_name
      t.integer :team_id
      t.integer :height_feet
      t.integer :height_inches
      t.string :weight
      t.string :phone
      t.text :address
      t.integer :status_id

      t.timestamps
    end
  end
end
