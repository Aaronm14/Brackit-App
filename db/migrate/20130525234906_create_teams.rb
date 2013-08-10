class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.integer :age_group
      t.string :city
      t.string :state
      t.string :contact
      t.integer :status_id

      t.timestamps
    end
  end
end
