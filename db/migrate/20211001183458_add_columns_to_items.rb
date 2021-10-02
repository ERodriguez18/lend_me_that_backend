class AddColumnsToItems < ActiveRecord::Migration[6.1]
  def change
    add_column :items, :shelf_id, :integer
  end
end
