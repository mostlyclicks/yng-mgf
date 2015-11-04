class RemoveFinancialColumnsFromUSers < ActiveRecord::Migration
  def change
    remove_column :users, :type_of_organization
    remove_column :users, :bank_name
    remove_column :users, :bank_account_number
    remove_column :users, :bank_routing_number
    remove_column :users, :tax_id
  end
end
