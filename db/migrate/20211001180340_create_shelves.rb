class CreateShelves < ActiveRecord::Migration[6.1]
  def change
    create_table :shelves do |t|
      t.integer :user_id
      t.string :zipcode

      t.timestamps
    end
  end
end
