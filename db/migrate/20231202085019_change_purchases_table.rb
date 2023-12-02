class ChangePurchasesTable < ActiveRecord::Migration[7.1]
  def change
    remove_column :purchases, :user_id
    remove_column :purchases, :author_id
    add_reference :purchases, :author, foreign_key: { to_table: 'users' }
  end
end

