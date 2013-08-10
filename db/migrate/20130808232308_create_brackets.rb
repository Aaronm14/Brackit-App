class CreateBrackets < ActiveRecord::Migration
  def change
    create_table :brackets do |t|
      t.integer :tournament_id

      t.timestamps
    end
  end
end
