class ChangeRalationshipsToRelationships < ActiveRecord::Migration[6.1]
  def change
    rename_table :ralationships,:relationshi
  end
end
