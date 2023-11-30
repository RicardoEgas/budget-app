class RenameEntitiesToPurchases < ActiveRecord::Migration[7.1]
  def change
    rename_table :entities, :purchases
  end
end
