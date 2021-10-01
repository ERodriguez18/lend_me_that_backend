class CreateShelves < ActiveRecord::Migration[6.1]
  def change
    create_table :shelves do |t|
      t.interger :user_id
      t.string :zipcode

      t.timestamps
    end
  end
end
