class CreateSuppliers < ActiveRecord::Migration[7.0]
  def change
    create_table :suppliers do |t|
      t.belongs_to :bank, null: false
      t.string :name, null: false
      t.string :nit, null: false
      t.string :contact_name, null: false
      t.string :contact_phone
      t.string :account_number

      t.timestamps
    end
  end
end
