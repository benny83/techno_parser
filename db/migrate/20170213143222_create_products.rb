class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :maker
      t.string :model
      t.float :price
      t.string :status
      t.string :site
      t.string :group_type

      t.timestamps
    end
  end
end
