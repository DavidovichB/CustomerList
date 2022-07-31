class CreateCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.integer :phone_number, index: true
      t.text :body
      t.integer :status, nil: false, default: 0

      t.timestamps
    end
  end
end
