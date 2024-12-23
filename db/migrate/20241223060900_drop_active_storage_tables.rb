class DropActiveStorageTables < ActiveRecord::Migration[7.2]
  def up
    drop_table :active_storage_variant_records, if_exists: true
    drop_table :active_storage_attachments, if_exists: true
    drop_table :active_storage_blobs, if_exists: true
  end

  def down
    create_table :active_storage_blobs do |t|
      t.string :key, null: false
      t.string :filename, null: false
      t.string :content_type
      t.text :metadata
      t.string :service_name, null: false
      t.bigint :byte_size, null: false
      t.string :checksum
      t.datetime :created_at, null: false
    end

    create_table :active_storage_attachments do |t|
      t.string :name, null: false
      t.string :record_type, null: false
      t.bigint :record_id, null: false
      t.bigint :blob_id, null: false
      t.datetime :created_at, null: false
    end

    create_table :active_storage_variant_records do |t|
      t.bigint :blob_id, null: false
      t.string :variation_digest, null: false
    end

    add_index :active_storage_blobs, :key, unique: true
    add_index :active_storage_attachments, [ :record_type, :record_id, :name, :blob_id ], unique: true, name: "index_active_storage_attachments_uniqueness"
    add_index :active_storage_variant_records, [ :blob_id, :variation_digest ], unique: true, name: "index_active_storage_variant_records_uniqueness"

    add_foreign_key :active_storage_attachments, :active_storage_blobs, column: :blob_id
    add_foreign_key :active_storage_variant_records, :active_storage_blobs, column: :blob_id
  end
end
