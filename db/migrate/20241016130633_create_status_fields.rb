class CreateStatusFields < ActiveRecord::Migration[6.1]
  def change
    create_table :status_fields do |t|
      t.json :ids
      t.integer :project_id
      t.timestamps
    end
    add_index :status_fields, :project_id
  end
end
