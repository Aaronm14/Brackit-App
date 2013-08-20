class AddColumnsToMostTables < ActiveRecord::Migration
  def change
     add_column :teams, :seed, :integer
     add_column :games, :round, :integer
     add_column :games, :bracket_id, :integer
     add_column :brackets, :age_group, :integer
  end
end
