class AddPseudonymToPlaces < ActiveRecord::Migration[7.2]
  def change
    add_column :places, :pseudonym, :string
  end
end
