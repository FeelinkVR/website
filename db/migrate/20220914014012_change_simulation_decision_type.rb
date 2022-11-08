class ChangeSimulationDecisionType < ActiveRecord::Migration[6.0]
  def change
    change_column(:simulations, :decisiones, :string)
  end
end
