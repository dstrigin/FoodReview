class ChangeDataTypeForPlace < ActiveRecord::Migration[7.2]
  def self.up
    remove_column :places, :type
    add_reference :places, :type
  end
end
