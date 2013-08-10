class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :home_team
      t.string :away_team
      t.time :time
      t.string :location
      t.integer :home_team_score
      t.integer :away_team_score

      t.timestamps
    end
  end
end
