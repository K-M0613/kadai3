class ChangeRelationshiToRelationships < ActiveRecord::Migration[6.1]
  def change
    rename_table :relationshi,:relationships
  end
end
