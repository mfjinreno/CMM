class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers, {:id => false} do |t|
      t.string :id
      t.string :company
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.datetime :created_at
      t.datetime :updated_at
    end



  end
end
