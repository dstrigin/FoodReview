class CategoryReferenceInPlaces < ActiveRecord::Migration[7.2]
  def self.up
    remove_column :places, :category_id
    add_reference :places, :category
  end
end
