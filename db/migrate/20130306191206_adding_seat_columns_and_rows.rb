class AddingSeatColumnsAndRows < ActiveRecord::Migration
  def change
    add_column :seats, :column, :integer
    add_column :seats, :row, :integer
  end
end
