class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :filepath, null: false
      t.string :date, null: false

      t.timestamps null: false
    end
    add_index :pictures, :filepath, unique: true
    add_index :pictures, :date
  end
end
