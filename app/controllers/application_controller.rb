class ApplicationController < ActionController::Base

	before_action :configure_permitted_parameters, if: :devise_controller?

  decent_configuration do
    strategy DecentExposure::StrongParametersStrategy
  end

  protect_from_forgery with: :exception

  private

  def configure_permitted_parameters
  	devise_parameter_sanitizer.for(:sign_up) << :firstname << :lastname << :phone_number << :company << :adress
    devise_parameter_sanitizer.for(:account_update) << :firstname << :lastname << :phone_number << :company << :adress
  end

  def authenticate_admin
    if !current_user.admin?
      sign_out
      flash[:error] = 'Log in as admin to perform this action.'
      redirect_to new_user_session_path
    end
	end

  def authenticate_product_owner
    if current_user != product.user
      flash[:error] = 'You are not allowed to edit this product.'
      redirect_to(category_product_url(category, product))
    end
  end
end
