class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :mobile
      t.string :gender
      t.references :cllass, foreign_key: true

      t.timestamps
    end
  end
end
