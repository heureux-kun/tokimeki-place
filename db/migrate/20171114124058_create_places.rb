class CreatePlaces < ActiveRecord::Migration[5.1]
  def change
    create_table :places do |t|
      t.string :photo
      t.string :name
      t.text :comment
      t.text :map

      t.timestamps
    end
  end
end
