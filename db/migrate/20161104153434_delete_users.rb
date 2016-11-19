class DeleteUsers < ActiveRecord::Migration
  def down
    drop_table :user
  end
end
