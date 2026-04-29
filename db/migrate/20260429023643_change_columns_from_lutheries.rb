class ChangeColumnsFromLutheries < ActiveRecord::Migration[8.0]
  def change
change_column :lutheries, :plateforme_achat,:string
  end
end
