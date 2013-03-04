class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.references :seat

      t.timestamps
    end
    add_index :students, :seat_id
  end
end
