class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) << :name
      devise_parameter_sanitizer.for(:account_update).concat([:name, :avatar_url])
    end
end
