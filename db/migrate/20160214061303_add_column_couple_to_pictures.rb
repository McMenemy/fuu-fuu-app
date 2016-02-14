class AddColumnCoupleToPictures < ActiveRecord::Migration
  def change
    add_column :pictures, :couple, :boolean, default: false
  end
end
