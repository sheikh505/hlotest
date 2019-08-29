class CreateCllasses < ActiveRecord::Migration[5.2]
  def change
    create_table :cllasses do |t|
      t.string :name

      t.timestamps
    end
  end
end
