class CreateSimulations < ActiveRecord::Migration[6.0]
  def change
    create_table :simulations do |t|
      t.references :user, null: false
      t.string :tipo, null: false, unique: true
      t.string :perspectiva, null: false
      t.boolean :realizada, null: false, default: false
      t.timestamps
    end
  end
end
