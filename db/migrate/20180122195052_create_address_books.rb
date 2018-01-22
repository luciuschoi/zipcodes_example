class CreateAddressBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :address_books do |t|
      t.string :name
      t.string :phone
      t.string :zipcode
      t.string :zipcode_01
      t.string :zipcode_02
      t.string :address_01
      t.string :address_02

      t.timestamps
    end
  end
end
