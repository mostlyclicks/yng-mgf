class AddColumnsToUser < ActiveRecord::Migration
  def change
    add_column :users, :company_name, :string
    add_column :users, :legal_name, :string
    add_column :users, :dba, :string
    add_column :users, :billing_address_line_1, :string
    add_column :users, :billing_address_line_2, :string
    add_column :users, :billing_city, :string
    add_column :users, :billing_state, :string
    add_column :users, :billing_zip, :string
    add_column :users, :billing_phone_number, :string
    add_column :users, :type_of_organization, :string
    add_column :users, :bank_name, :string
    add_column :users, :bank_account_number, :string
    add_column :users, :bank_routing_number, :string
    add_column :users, :tax_id, :string
    add_column :users, :info_website, :string
    add_column :users, :info_company_description, :text
    add_column :users, :info_hours, :text
    add_column :users, :info_customer_service_phone, :string
    add_column :users, :info_accounts_payable_person, :string
    add_column :users, :info_marketing_manager, :string
    add_column :users, :owner_direct_name, :string
    add_column :users, :owner_direct_email, :string
    add_column :users, :owner_direct_phone, :string
  end
end
