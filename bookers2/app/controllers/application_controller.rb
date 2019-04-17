class ApplicationController < ActionController::Base


before_action :configure_permitted_parameters, if: :devise_controller?


# before_action :set_current_user

protected


def set_current_user
 @cerrent_user = User.find_by(id session[:user_id])
end


def configure_permitted_parameters
	devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email])
end

def after_sign_in_path_for(resource)
    user_path(current_user.id)
end

def after_sign_out_path_for(resource)
    root_path
end
def user
  Articles.find_by(user_id: params[:user_id])
end

end
