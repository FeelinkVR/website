class AddRegionToEmpresa < ActiveRecord::Migration[6.0]
  def change
    add_column :empresas, :region, :string
  end
end
