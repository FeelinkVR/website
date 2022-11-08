class AddDecisionesToSimulation < ActiveRecord::Migration[6.0]
  def change
    add_column :simulations, :decisiones, :integer, default: -1
  end
end
