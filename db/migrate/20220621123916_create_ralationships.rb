class CreateRalationships < ActiveRecord::Migration[6.1]
  def change
    create_table :ralationships do |t|
      t.integer :follow_id
      t.integer :followd_id

      t.timestamps
    end
  end
end
