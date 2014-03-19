class AddColumnColToLogs < ActiveRecord::Migration
  def change
    add_column :logs, :col, :string, :limit => 200
  end
end
