class AddFieldsToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :nombre, :string
    add_column :users, :apellido, :string
    add_column :users, :telefono, :string
    add_column :users, :encargado, :boolean
    add_column :users, :admin, :boolean
  end
end
