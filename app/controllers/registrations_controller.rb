class Users::RegistrationsController < Devise::RegistrationsController
  before_filter :configure_permitted_parameters
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up).push(:name, :phone, :organization)
  end
end