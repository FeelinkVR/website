class AddComunaToEmpresa < ActiveRecord::Migration[6.0]
  def change
    add_column :empresas, :comuna, :string
  end
end
