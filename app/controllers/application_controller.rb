class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :configure_permitted_parameters, if: :devise_controller?


  def after_sign_in_path_for(resource)

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
      edit_user_registration_path(current_user)
    else
      user_path(current_user)
    end

    
  end

  # def index
  #   if user_signed_in?
  #     if current_user.legal_name.present?
  #       user_session_path(current_user)
  #     else
  #       edit_user_registration_path(current_user)
  #     end
  #   end
  # end

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:company_name, :email, :password, :password_confirmation, :current_password)}
    # devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:password, :email)}
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:company_name, :email, :password, :password_confirmation, :current_password, :legal_name,
      :dba, :billing_address_line_1, :billing_address_line_2, :billing_city, :billing_state, :billing_zip, :billing_phone_number, :info_website, :info_company_description, :info_hours, :info_customer_service_phone,
      :info_accounts_payable_person, :info_marketing_manager, :owner_direct_name, :owner_direct_email, :owner_direct_phone, :dropbox_info)}
  end

end
