class CreateTournaments < ActiveRecord::Migration
  def change
    create_table :tournaments do |t|
      t.string :name
      t.string :city
      t.string :state
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
