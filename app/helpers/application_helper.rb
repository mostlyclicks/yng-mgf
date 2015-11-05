module ApplicationHelper
  def complete_info(current_user)
    if current_user.legal_name.blank? || 
        current_user.dba.blank? ||
        current_user.billing_address_line_1.blank? ||
        current_user.billing_city.blank? ||
        current_user.billing_state.blank? ||
        current_user.billing_zip.blank? ||
        current_user.billing_phone_number.blank? ||
        current_user.info_website.blank? ||
        current_user.info_company_description.blank? ||
        current_user.info_hours.blank? ||
        current_user.info_customer_service_phone.blank? ||
        current_user.info_accounts_payable_person.blank? ||
        current_user.info_marketing_manager.blank? ||
        current_user.owner_direct_name.blank? ||
        current_user.owner_direct_email.blank? ||
        current_user.owner_direct_phone.blank?


      link_to 'To fully activate your account, complete your company information', edit_user_registration_path

      
    end
  end

end
