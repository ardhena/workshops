class ApplicationController < ActionController::Base

	before_action :configure_permitted_parameters, if: :devise_controller?

  decent_configuration do
    strategy DecentExposure::StrongParametersStrategy
  end

  protect_from_forgery with: :exception

  private

  def configure_permitted_parameters
  	devise_parameter_sanitizer.for(:sign_up) << :firstname << :lastname
  end

  def authenticate_admin
    if !current_user.admin?
      redirect_to new_user_session_path
    end
	end

  def authenticate_product_owner
    if user_signed_in? != product.user_id
      flash[:error] = 'You are not allowed to edit this product.'
      redirect_to(category_product_url(category, product))
    end
  end
end
