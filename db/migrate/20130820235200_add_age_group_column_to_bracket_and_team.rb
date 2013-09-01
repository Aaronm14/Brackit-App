class AddAgeGroupColumnToBracketAndTeam < ActiveRecord::Migration
  def change
    remove_column :teams, :age_group
    remove_column :brackets, :age_group

    add_column :teams, :age_group_id, :integer
    add_column :brackets, :age_group_id, :integer
  end
end
