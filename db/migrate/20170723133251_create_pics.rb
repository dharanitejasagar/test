class CreatePics < ActiveRecord::Migration[5.1]
  def change
    create_table :pics do |t|
      t.string :name
      t.integer :size

      t.timestamps
    end
  end
end
