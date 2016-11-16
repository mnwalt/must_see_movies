class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.integer :movies_id
      t.integer :actor_id
      t.string :name

      t.timestamps

    end
  end
end
