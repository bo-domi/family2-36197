class CreateRecordAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :record_addresses do |t|

      t.timestamps
    end
  end
end
