class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    drop_table :orders
    create_table :orders do |t|
      t.string :name
      t.text :address
      t.string :email
      t.integer :pay_type

      t.timestamps
    end
  end
end
