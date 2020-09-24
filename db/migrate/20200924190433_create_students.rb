class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string :name
      t.string :major
      t.integer :age
      t.belongs_to :instructor, foreign_key: true

      t.timestamps
    end
  end
end
