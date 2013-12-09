class CreateLogs < ActiveRecord::Migration
  def change
    create_table :logs do |t|
      t.string :remote_ip
      t.string :login_name
      t.string :function_name
      t.text :function_data
      t.string :mac_address
      t.text :remarks
      t.string :target_product

      t.timestamps
    end
  end
end
