class CreatePlaces < ActiveRecord::Migration[7.2]
  def change
    create_table :places do |t|
      t.string :name
      t.string :address
      t.string :type
      t.integer :category_id
      t.text :description

      t.timestamps
    end
  end
end
